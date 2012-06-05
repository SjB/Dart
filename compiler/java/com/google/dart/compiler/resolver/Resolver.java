// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

package com.google.dart.compiler.resolver;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.dart.compiler.DartCompilationPhase;
import com.google.dart.compiler.DartCompilerContext;
import com.google.dart.compiler.ErrorCode;
import com.google.dart.compiler.ast.DartArrayLiteral;
import com.google.dart.compiler.ast.DartBinaryExpression;
import com.google.dart.compiler.ast.DartBlock;
import com.google.dart.compiler.ast.DartBooleanLiteral;
import com.google.dart.compiler.ast.DartBreakStatement;
import com.google.dart.compiler.ast.DartCatchBlock;
import com.google.dart.compiler.ast.DartClass;
import com.google.dart.compiler.ast.DartDoWhileStatement;
import com.google.dart.compiler.ast.DartDoubleLiteral;
import com.google.dart.compiler.ast.DartExpression;
import com.google.dart.compiler.ast.DartField;
import com.google.dart.compiler.ast.DartFieldDefinition;
import com.google.dart.compiler.ast.DartForInStatement;
import com.google.dart.compiler.ast.DartForStatement;
import com.google.dart.compiler.ast.DartFunction;
import com.google.dart.compiler.ast.DartFunctionExpression;
import com.google.dart.compiler.ast.DartFunctionObjectInvocation;
import com.google.dart.compiler.ast.DartFunctionTypeAlias;
import com.google.dart.compiler.ast.DartGotoStatement;
import com.google.dart.compiler.ast.DartIdentifier;
import com.google.dart.compiler.ast.DartIfStatement;
import com.google.dart.compiler.ast.DartInitializer;
import com.google.dart.compiler.ast.DartIntegerLiteral;
import com.google.dart.compiler.ast.DartInvocation;
import com.google.dart.compiler.ast.DartLabel;
import com.google.dart.compiler.ast.DartMapLiteral;
import com.google.dart.compiler.ast.DartMethodDefinition;
import com.google.dart.compiler.ast.DartMethodInvocation;
import com.google.dart.compiler.ast.DartNamedExpression;
import com.google.dart.compiler.ast.DartNativeBlock;
import com.google.dart.compiler.ast.DartNewExpression;
import com.google.dart.compiler.ast.DartNode;
import com.google.dart.compiler.ast.DartParameter;
import com.google.dart.compiler.ast.DartParameterizedTypeNode;
import com.google.dart.compiler.ast.DartPropertyAccess;
import com.google.dart.compiler.ast.DartRedirectConstructorInvocation;
import com.google.dart.compiler.ast.DartReturnStatement;
import com.google.dart.compiler.ast.DartStatement;
import com.google.dart.compiler.ast.DartStringInterpolation;
import com.google.dart.compiler.ast.DartStringLiteral;
import com.google.dart.compiler.ast.DartSuperConstructorInvocation;
import com.google.dart.compiler.ast.DartSuperExpression;
import com.google.dart.compiler.ast.DartSwitchMember;
import com.google.dart.compiler.ast.DartSwitchStatement;
import com.google.dart.compiler.ast.DartThisExpression;
import com.google.dart.compiler.ast.DartTryStatement;
import com.google.dart.compiler.ast.DartTypeNode;
import com.google.dart.compiler.ast.DartTypeParameter;
import com.google.dart.compiler.ast.DartUnit;
import com.google.dart.compiler.ast.DartUnqualifiedInvocation;
import com.google.dart.compiler.ast.DartVariable;
import com.google.dart.compiler.ast.DartVariableStatement;
import com.google.dart.compiler.ast.DartWhileStatement;
import com.google.dart.compiler.ast.Modifiers;
import com.google.dart.compiler.common.HasSourceInfo;
import com.google.dart.compiler.common.SourceInfo;
import com.google.dart.compiler.type.InterfaceType;
import com.google.dart.compiler.type.InterfaceType.Member;
import com.google.dart.compiler.type.Type;
import com.google.dart.compiler.type.TypeKind;
import com.google.dart.compiler.type.TypeVariable;
import com.google.dart.compiler.type.Types;
import com.google.dart.compiler.util.apache.StringUtils;

import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * Resolves unqualified elements in a compilation unit.
 */
public class Resolver {

  private final ResolutionContext topLevelContext;
  private final CoreTypeProvider typeProvider;
  private final InterfaceType rawArrayType;
  private final InterfaceType defaultLiteralMapType;


  private static final EnumSet<ElementKind> INVOKABLE_ELEMENTS = EnumSet.<ElementKind>of(
      ElementKind.FIELD,
      ElementKind.PARAMETER,
      ElementKind.VARIABLE,
      ElementKind.FUNCTION_OBJECT,
      ElementKind.METHOD);

  @VisibleForTesting
  public Resolver(DartCompilerContext compilerContext, Scope libraryScope,
                  CoreTypeProvider typeProvider) {
    compilerContext.getClass(); // Fast null-check.
    libraryScope.getClass(); // Fast null-check.
    typeProvider.getClass(); // Fast null-check.
    this.topLevelContext = new ResolutionContext(libraryScope, compilerContext, typeProvider);
    this.typeProvider = typeProvider;
    Type dynamicType = typeProvider.getDynamicType();
    Type stringType = typeProvider.getStringType();
    this.defaultLiteralMapType = typeProvider.getMapType(stringType, dynamicType);
    this.rawArrayType = typeProvider.getArrayType(dynamicType);
  }

  @VisibleForTesting
  public DartUnit exec(DartUnit unit) {
    // Visits all top level elements of a compilation unit and resolves names used in method
    // bodies.
    LibraryElement library = unit.getLibrary() != null ? unit.getLibrary().getElement() : null;
    unit.accept(new ResolveElementsVisitor(topLevelContext, library));
    return unit;
  }

  /**
   * Main entry point for IDE. Resolves a member (method or field)
   * incrementally in the given context.
   *
   * @param classElement the class enclosing the member.
   * @param member the member to resolve.
   * @param context a resolution context corresponding to classElement.
   */
  public void resolveMember(ClassNodeElement classElement, NodeElement member, ResolutionContext context) {
    ResolveElementsVisitor visitor;
    if(member == null) {
      return;
    }
    switch (member.getKind()) {
      case CONSTRUCTOR:
      case METHOD:
        ResolutionContext methodContext = context.extend(member.getName());
        visitor = new ResolveElementsVisitor(methodContext, classElement,
                                             (MethodElement) member);
        break;

        case FIELD:
          ResolutionContext fieldContext = context;
          if (member.getModifiers().isAbstractField()) {
            fieldContext = context.extend(member.getName());
          }
          visitor = new ResolveElementsVisitor(fieldContext, classElement);
          break;

      default:
        throw topLevelContext.internalError(member,
                                            "unexpected element kind: %s", member.getKind());
    }
    member.getNode().accept(visitor);
  }

  /**
   * Resolves names in a method body.
   *
   * TODO(ngeoffray): Errors reported:
   *  - A default implementation not providing the default methods.
   *  - An interface with default methods but without a default implementation.
   *  - A member method shadowing a super property.
   *  - A member property shadowing a super method.
   *  - A formal parameter in a non-constructor shadowing a member.
   *  - A local variable shadowing another variable.
   *  - A local variable shadowing a formal parameter.
   *  - A local variable shadowing a class member.
   *  - Using 'this' or 'super' in a static or factory method, or in an initializer.
   *  - Using 'super' in a class without a super class.
   *  - Incorrectly using a resolved element.
   */
  @VisibleForTesting
  public class ResolveElementsVisitor extends ResolveVisitor {
    private EnclosingElement currentHolder;
    private EnclosingElement enclosingElement;
    private MethodElement currentMethod;
    private boolean inInitializer;
    private MethodElement innermostFunction;
    private ResolutionContext context;
    private LabelElement currentLabel;
    private Set<LabelElement> referencedLabels = Sets.newHashSet();
    private Set<LabelElement> labelsInScopes = Sets.newHashSet();
    private Set<FieldElement> finalsNeedingInitializing = Sets.newHashSet();

    @VisibleForTesting
    public ResolveElementsVisitor(ResolutionContext context,
                                  EnclosingElement currentHolder,
                                  MethodElement currentMethod) {
      super(typeProvider);
      this.context = context;
      this.currentMethod = currentMethod;
      this.innermostFunction = currentMethod;
      this.currentHolder = currentHolder;
      this.enclosingElement = currentHolder;
      this.inInitializer = false;
    }

    private ResolveElementsVisitor(ResolutionContext context, EnclosingElement currentHolder) {
      this(context, currentHolder, null);
    }

    @Override
    ResolutionContext getContext() {
      return context;
    }
    
    @Override
    protected EnclosingElement getEnclosingElement() {
      return enclosingElement;
    }

    @Override
    public Element visitUnit(DartUnit unit) {
      for (DartNode node : unit.getTopLevelNodes()) {
        node.accept(this);
      }
      return null;
    }

    @Override
    public Element visitFunctionTypeAlias(DartFunctionTypeAlias alias) {
      getContext().pushFunctionAliasScope(alias);
      resolveFunctionAlias(alias);

      List<DartParameter> parameters = alias.getParameters();
      for (DartParameter parameter : parameters) {
        assert parameter.getElement() != null;
        if (parameter.getQualifier() instanceof DartThisExpression) {
          onError(parameter.getName(), ResolverErrorCode.PARAMETER_INIT_OUTSIDE_CONSTRUCTOR);
        } else {
            getContext().declare(
                parameter.getElement(),
                ResolverErrorCode.DUPLICATE_PARAMETER,
                ResolverErrorCode.DUPLICATE_PARAMETER_WARNING);
        }
        if (parameter.getDefaultExpr() != null) {
          onError(parameter.getDefaultExpr(), ResolverErrorCode.DEFAULT_VALUE_IN_TYPEDEF);
        }
      }

      getContext().popScope();
      return null;
    }

    @Override
    public Element visitClass(DartClass cls) {
      assert currentMethod == null : "nested class?";
      ClassNodeElement classElement = cls.getElement();
      try {
        classElement.getAllSupertypes();
      } catch (CyclicDeclarationException e) {
        HasSourceInfo errorTarget = e.getElement();
        if (errorTarget == null) {
          errorTarget = cls;
        }
        onError(errorTarget, ResolverErrorCode.CYCLIC_CLASS, e.getElement().getName());
      } catch (DuplicatedInterfaceException e) {
        onError(cls, ResolverErrorCode.DUPLICATED_INTERFACE,
                        e.getFirst(), e.getSecond());
      }

      checkClassTypeVariables(classElement);

      // Push new resolution context.
      ResolutionContext previousContext = context;
      EnclosingElement previousHolder = currentHolder;
      EnclosingElement previousEnclosingElement = enclosingElement;
      currentHolder = classElement;
      enclosingElement = classElement;
      context = topLevelContext.extend(classElement);

      this.finalsNeedingInitializing.clear();
      for (NodeElement member : classElement.getMembers()) {
        member.getNode().accept(this);
      }

      boolean testForAllConstantFields = false;
      for (DartNode member : cls.getMembers()) {
        if (member instanceof DartMethodDefinition) {
          DartMethodDefinition method = (DartMethodDefinition) member;
          if (method.getElement().isConstructor()) {
            method.accept(this);
            if (method.getModifiers().isConstant()) {
              testForAllConstantFields = true;
            }
          }
        }
      }

      if (testForAllConstantFields) {
        InterfaceType interfaceType = classElement.getType();
        while (interfaceType != null && interfaceType != typeProvider.getObjectType()) {
          ClassElement interfaceElement = interfaceType.getElement();
          constVerifyMembers(interfaceElement.getMembers(), classElement, interfaceElement);
          interfaceType = interfaceElement.getSupertype();
        }
      }

      checkRedirectConstructorCycle(classElement.getConstructors(), context);
      if (Elements.needsImplicitDefaultConstructor(classElement)) {
        checkImplicitDefaultDefaultSuperInvocation(cls, classElement);
      }

      if (cls.getDefaultClass() != null && classElement.getDefaultClass() == null) {
        onError(cls.getDefaultClass(), ResolverErrorCode.NO_SUCH_TYPE, cls.getDefaultClass());
      } else if (classElement.getDefaultClass() != null) {
        recordElement(cls.getDefaultClass().getExpression(),
                      classElement.getDefaultClass().getElement());
        bindDefaultTypeParameters(classElement.getDefaultClass().getElement().getTypeParameters(),
                                  cls.getDefaultClass().getTypeParameters(),
                                  context);

        // Make sure the 'default' clause matches the referenced class type parameters
        checkDefaultClassTypeParamsToDefaultDecl(classElement.getDefaultClass(),
                                                 cls.getDefaultClass());

        ClassElement defaultClass = classElement.getDefaultClass().getElement();
        if (defaultClass.isInterface()) {
          onError(cls.getDefaultClass(), ResolverErrorCode.DEFAULT_MUST_SPECIFY_CLASS);
        }

        // Make sure the default class matches the interface type parameters
        checkInterfaceTypeParamsToDefault(classElement, defaultClass);

        // Check that interface constructors have corresponding methods in default class.
        checkInterfaceConstructors(classElement);
      } else if (classElement.isInterface() && classElement.getConstructors() != null) {
        for (ConstructorElement interfaceConstructor : classElement.getConstructors()) {
          onError(interfaceConstructor.getNameLocation(),
                  ResolverErrorCode.ILLEGAL_CONSTRUCTOR_NO_DEFAULT_IN_INTERFACE);
        }
      }

      context = previousContext;
      currentHolder = previousHolder;
      enclosingElement = previousEnclosingElement;
      return classElement;
    }

    private void constVerifyMembers(Iterable<? extends Element> members, ClassElement originalClass,
        ClassElement currentClass) {
      for (Element element : members) {
        Modifiers modifiers = element.getModifiers();
        if (ElementKind.of(element).equals(ElementKind.FIELD) && !modifiers.isFinal()
            && !modifiers.isStatic() && !modifiers.isAbstractField()) {
          FieldElement field = (FieldElement) element;
          HasSourceInfo errorNode = field.getSetter() == null ? element : field.getSetter();
          onError(errorNode, currentClass == originalClass
              ? ResolverErrorCode.CONST_CLASS_WITH_NONFINAL_FIELDS
              : ResolverErrorCode.CONST_CLASS_WITH_INHERITED_NONFINAL_FIELDS,
              originalClass.getName(), field.getName(), currentClass.getName());
        }
      }
    }

    /**
     * Sets the type in the AST of the default clause of an interface so that the type
     * parameters to resolve back to the default class.
     */
    private void bindDefaultTypeParameters(List<Type> parameterTypes,
                                           List<DartTypeParameter> parameterNodes,
                                           ResolutionContext classContext) {
      Iterator<? extends Type> typeIterator = parameterTypes.iterator();
      Iterator<DartTypeParameter> nodeIterator = parameterNodes.iterator();

      while(typeIterator.hasNext() && nodeIterator.hasNext()) {

        Type type = typeIterator.next();
        DartTypeParameter node = nodeIterator.next();

        if (type.getElement().getName().equals(node.getName().getName())) {
          node.setType(type);
          recordElement(node.getName(), type.getElement());
        } else {
          node.setType(typeProvider.getDynamicType());
        }

        DartTypeNode boundNode = node.getBound();
        if (boundNode != null) {
          Type bound =
              classContext.resolveType(
                  boundNode,
                  false,
                  false,
                  ResolverErrorCode.NO_SUCH_TYPE);
          boundNode.setType(bound);
        }
      }

      while (nodeIterator.hasNext()) {
        DartTypeParameter node = nodeIterator.next();
        node.setType(typeProvider.getDynamicType());
      }
    }
    /**
     * If type parameters are present, the type parameters of the default statement
     * must exactly match those of those declared in the class it references.
     *
     */
    private void checkDefaultClassTypeParamsToDefaultDecl(InterfaceType defaultClassType,
                                                          DartParameterizedTypeNode defaultClassRef) {
      if (defaultClassRef.getTypeParameters().isEmpty()) {
        return;
      }
      ClassElement defaultClassElement = defaultClassType.getElement();
      boolean match = true;
      if (defaultClassElement.getTypeParameters().isEmpty()) {
        match = false;
      } else {
        // TODO(zundel): This is effective in catching mistakes, but highlights the entire type
        // expression - A more specific indication of where the error started might be appreciated.
        String defaultClassSource = defaultClassElement.getDeclarationNameWithTypeParameters();
        String refSource = defaultClassRef.toSource();
        if (!refSource.equals(defaultClassSource)) {
          match = false;
        }
      }
      if (!match) {
        // TODO(zundel): work harder to point out where the type param match failure starts.
        onError(defaultClassRef, ResolverErrorCode.TYPE_PARAMETERS_MUST_MATCH_EXACTLY);
      }
    }

    private void checkInterfaceTypeParamsToDefault(ClassElement interfaceElement,
                                                   ClassElement defaultClassElement) {

      List<Type> interfaceTypeParams = interfaceElement.getTypeParameters();

      List<Type> defaultTypeParams = defaultClassElement.getTypeParameters();


      if (defaultTypeParams.size() != interfaceTypeParams.size()) {

        onError(interfaceElement.getNameLocation(),
                ResolverErrorCode.DEFAULT_CLASS_MUST_HAVE_SAME_TYPE_PARAMS);
      } else {
        Iterator<? extends Type> interfaceIterator = interfaceTypeParams.iterator();
        Iterator<? extends Type> defaultIterator = defaultTypeParams.iterator();
        while (interfaceIterator.hasNext()) {
          Type iVar = interfaceIterator.next();
          Type dVar = defaultIterator.next();
          String iVarName = iVar.getElement().getName();
          String dVarName = dVar.getElement().getName();
          if (!iVarName.equals(dVarName)) {
            onError(iVar.getElement(), ResolverErrorCode.TYPE_VARIABLE_DOES_NOT_MATCH,
                    iVarName, dVarName, defaultClassElement.getName());
          }
        }
      }
    }

    /**
     * Check that used type variables are unique and don't shadow and existing elements.
     */
    private void checkClassTypeVariables(ClassElement classElement) {
      Scope scope = context.getScope();
      Set<String> declaredVariableNames = Sets.newHashSet();
      for (Type type : classElement.getTypeParameters()) {
        if (type instanceof TypeVariable) {
          Element typeVariableElement = type.getElement();
          String name = typeVariableElement.getName();
          // Check that type variables are unique in this Class  declaration.
          if (declaredVariableNames.contains(name)) {
            onError(typeVariableElement, ResolverErrorCode.DUPLICATE_TYPE_VARIABLE, name);
          } else {
            declaredVariableNames.add(name);
          }
          // Check that type variable is not shadowing any element in enclosing context.
          Element existingElement = scope.findElement(scope.getLibrary(), name);
          if (existingElement != null) {
            onError(
                typeVariableElement,
                ResolverErrorCode.DUPLICATE_TYPE_VARIABLE_WARNING,
                name,
                existingElement,
                Elements.getRelativeElementLocation(typeVariableElement, existingElement));
          }
        }
      }
    }

    /**
     * Checks that interface constructors have corresponding methods in default class.
     */
    private void checkInterfaceConstructors(ClassElement interfaceElement) {
      String interfaceClassName = interfaceElement.getName();
      String defaultClassName = interfaceElement.getDefaultClass().getElement().getName();

      for (ConstructorElement interfaceConstructor : interfaceElement.getConstructors()) {
        ConstructorElement defaultConstructor =
            resolveInterfaceConstructorInDefaultClass(
                interfaceConstructor,
                interfaceConstructor);
        if (defaultConstructor != null) {
          // Remember for TypeAnalyzer.
          interfaceConstructor.setDefaultConstructor(defaultConstructor);
          // Validate number of required parameters.
          {
            int numReqInterface = Elements.getNumberOfRequiredParameters(interfaceConstructor);
            int numReqDefault = Elements.getNumberOfRequiredParameters(defaultConstructor);
            if (numReqInterface != numReqDefault) {
              onError(
                  interfaceConstructor,
                  ResolverErrorCode.DEFAULT_CONSTRUCTOR_NUMBER_OF_REQUIRED_PARAMETERS,
                  Elements.getRawMethodName(interfaceConstructor),
                  interfaceClassName,
                  numReqInterface,
                  Elements.getRawMethodName(defaultConstructor),
                  defaultClassName,
                  numReqDefault);
            }
          }
          // Validate names of named parameters.
          {
            List<String> interfaceNames = Elements.getNamedParameters(interfaceConstructor);
            List<String> defaultNames = Elements.getNamedParameters(defaultConstructor);
            if (!interfaceNames.equals(defaultNames)) {
              onError(
                  interfaceConstructor,
                  ResolverErrorCode.DEFAULT_CONSTRUCTOR_NAMED_PARAMETERS,
                  Elements.getRawMethodName(interfaceConstructor),
                  interfaceClassName,
                  interfaceNames,
                  Elements.getRawMethodName(defaultConstructor),
                  defaultClassName,
                  defaultNames);
            }
          }
        }
      }
    }

    /**
     * Returns <code>true</code> if the {@link ClassElement} has an implicit or a declared
     * default constructor.
     */
    boolean hasDefaultConstructor(ClassElement classElement) {
      if (Elements.needsImplicitDefaultConstructor(classElement)) {
        return true;
      }

      ConstructorElement defaultCtor = Elements.lookupConstructor(classElement, "");
      if (defaultCtor != null) {
        return defaultCtor.getParameters().isEmpty();
      }

      return false;
    }

    private void checkImplicitDefaultDefaultSuperInvocation(DartClass cls,
        ClassElement classElement) {
      assert (Elements.needsImplicitDefaultConstructor(classElement));

      InterfaceType supertype = classElement.getSupertype();
      if (supertype != null) {
        ClassElement superElement = supertype.getElement();
        if (!superElement.isDynamic()) {
          ConstructorElement superCtor = Elements.lookupConstructor(superElement, "");
          boolean superHasDefaultCtor =
              (superCtor != null && superCtor.getParameters().isEmpty())
                  || (superCtor == null && Elements.needsImplicitDefaultConstructor(superElement));
          if (!superHasDefaultCtor) {
            onError(cls.getName(),
                ResolverErrorCode.CANNOT_RESOLVE_IMPLICIT_CALL_TO_SUPER_CONSTRUCTOR,
                cls.getSuperclass());
          }
        }
      }
    }

    private Element resolve(DartNode node) {
      if (node == null) {
        return null;
      } else {
        return node.accept(this);
      }
    }

    @Override
    public MethodElement visitMethodDefinition(DartMethodDefinition node) {
      MethodElement member = node.getElement();
      ResolutionContext previousContext = context;
      context = context.extend(member.getName());
      assert currentMethod == null : "Nested methods?";
      innermostFunction = currentMethod = member;
      EnclosingElement previousEnclosingElement = enclosingElement;
      enclosingElement = member;

      DartFunction functionNode = node.getFunction();
      List<DartParameter> parameters = functionNode.getParameters();
      Set<FieldElement> initializedFields = Sets.newHashSet();

      // First declare all normal parameters in the scope, putting them in the
      // scope of the default expressions so we can report better errors.
      for (DartParameter parameter : parameters) {
        assert parameter.getElement() != null;
        if (!(parameter.getQualifier() instanceof DartThisExpression)) {
          getContext().declare(
              parameter.getElement(),
              ResolverErrorCode.DUPLICATE_PARAMETER,
              ResolverErrorCode.DUPLICATE_PARAMETER_WARNING);
        }
      }
      for (DartParameter parameter : parameters) {
        // Then resolve the default values.
        resolve(parameter.getDefaultExpr());
        if (parameter.getQualifier() instanceof DartThisExpression && parameter.getElement() != null
            && !initializedFields.add(parameter.getElement().getParameterInitializerElement())) {
          onError(parameter, ResolverErrorCode.DUPLICATE_INITIALIZATION, parameter.getName());
        }
      }

      DartBlock body = functionNode.getBody();
      boolean isInterface = false;
      if (ElementKind.of(member.getEnclosingElement()).equals(ElementKind.CLASS) 
          && ((ClassElement) member.getEnclosingElement()).isInterface()) {
        isInterface =true;
      }
      if (body == null 
          && !Elements.isNonFactoryConstructor(member)
          && !member.getModifiers().isAbstract()
          && !isInterface) {
        onError(functionNode, ResolverErrorCode.METHOD_MUST_HAVE_BODY);
      }
      resolve(functionNode.getBody());

      if (Elements.isNonFactoryConstructor(member) 
          && !(body instanceof DartNativeBlock)) {
        resolveInitializers(node, initializedFields);
        // Test for missing final initialized fields
        if (!this.currentHolder.isInterface() && !member.getModifiers().isRedirectedConstructor()) {
          for (FieldElement finalField : this.finalsNeedingInitializing) {
            if (!initializedFields.contains(finalField)) {
              onError(node.getName(), ResolverErrorCode.FINAL_FIELD_MUST_BE_INITIALIZED,
                  finalField.getName());
            }
          }
        }
      }

      context = previousContext;
      innermostFunction = currentMethod = null;
      enclosingElement = previousEnclosingElement;
      return member;
    }

    @Override
    public Element visitField(DartField node) {
      DartExpression expression = node.getValue();
      Modifiers modifiers = node.getModifiers();
      boolean isFinal = modifiers.isFinal();
      boolean isTopLevel = ElementKind.of(currentHolder).equals(ElementKind.LIBRARY);
      boolean isStatic = modifiers.isStatic();

      if (expression != null) {
        resolve(expression);
        // Now, this constant has a type. Save it for future reference.
        Element element = node.getElement();
        Type expressionType = expression.getType();
        if (expressionType != null && TypeKind.of(element.getType()) == TypeKind.DYNAMIC) {
          Type fieldType = Types.makeInferred(expressionType);
          Elements.setType(element, fieldType);
        }
      } else if (isFinal) {
        if (isStatic) {
          onError(node, ResolverErrorCode.STATIC_FINAL_REQUIRES_VALUE);
        } else if (isTopLevel) {
          onError(node, ResolverErrorCode.TOPLEVEL_FINAL_REQUIRES_VALUE);          
        } else {
          // If a final instance field wasn't initialized at declaration, we must check
          // at construction time.
          this.finalsNeedingInitializing.add(node.getElement());
        }
      }

      // If field is an accessor, both getter and setter need to be visited (if present).
      FieldNodeElement field = node.getElement();
      if (field.getGetter() != null) {
        resolve(field.getGetter().getNode());
      }
      if (field.getSetter() != null) {
        resolve(field.getSetter().getNode());
      }
      return null;
    }

    @Override
    public Element visitFieldDefinition(DartFieldDefinition node) {
      visit(node.getFields());
      return null;
    }

    @Override
    public Element visitFunction(DartFunction node) {
      throw context.internalError(node, "should not be called.");
    }

    @Override
    public Element visitParameter(DartParameter x) {
      Element element = super.visitParameter(x);
      resolve(x.getDefaultExpr());
      getContext().declare(
          element,
          ResolverErrorCode.DUPLICATE_PARAMETER,
          ResolverErrorCode.DUPLICATE_PARAMETER_WARNING);
      return element;
    }

    public VariableElement resolveVariable(DartVariable x, Modifiers modifiers) {
      // Visit the initializer first.
      resolve(x.getValue());
      VariableElement element = Elements.variableElement(enclosingElement, x, x.getVariableName(), modifiers);
      getContext().declare(
          recordElement(x, element),
          ResolverErrorCode.DUPLICATE_LOCAL_VARIABLE_ERROR,
          ResolverErrorCode.DUPLICATE_LOCAL_VARIABLE_WARNING);
      recordElement(x.getName(), element);
      return element;
    }

    @Override
    public Element visitVariableStatement(DartVariableStatement node) {
      resolveVariableStatement(node, false);
      return null;
    }

    private void resolveVariableStatement(DartVariableStatement node,
                                          boolean isImplicitlyInitialized) {
      Type type =
          resolveType(
              node.getTypeNode(),
              inStaticContext(currentMethod),
              inFactoryContext(currentMethod),
              TypeErrorCode.NO_SUCH_TYPE);
      for (DartVariable variable : node.getVariables()) {
        Elements.setType(resolveVariable(variable, node.getModifiers()), type);
        checkVariableStatement(node, variable, isImplicitlyInitialized);
      }
     }

    @Override
    public Element visitLabel(DartLabel x) {
      LabelElement previousLabel = currentLabel;
      currentLabel = Elements.labelElement(x, x.getName(), innermostFunction);
      recordElement(x.getLabel(), currentLabel);
      recordElement(x, currentLabel);
      x.visitChildren(this);
      if (!labelsInScopes.contains(currentLabel)) {
        // TODO(zundel): warning, not type error.
        // topLevelContext.typeError(x, DartCompilerErrorCode.USELESS_LABEL, x.getName());
      } else if (!referencedLabels.contains(currentLabel)) {
        // TODO(zundel): warning, not type error.
        // topLevelContext.typeError(x, DartCompilerErrorCode.UNREFERENCED_LABEL, x.getName());
      }
      currentLabel = previousLabel;
      return null;
    }

    @Override
    public Element visitFunctionExpression(DartFunctionExpression x) {
      MethodElement element;
      if (x.isStatement()) {
        // Function statement names live in the outer scope.
        element = getContext().declareFunction(x);
        getContext().pushFunctionScope(x);
      } else {
        // Function expression names live in their own scope.
        getContext().pushFunctionScope(x);
        element = getContext().declareFunction(x);
      }
      MethodElement previousFunction = innermostFunction;
      innermostFunction = element;
      DartFunction functionNode = x.getFunction();
      resolveFunction(functionNode, element);
      resolve(functionNode.getBody());
      innermostFunction = previousFunction;
      getContext().popScope();
      if (x.getName() != null) {
        recordElement(x.getName(), element);
      }
      return recordElement(x, element);
    }

    @Override
    public Element visitBlock(DartBlock x) {
      getContext().pushScope("<block>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitBreakStatement(DartBreakStatement x) {
      // Handle corner case of L: break L;
      DartNode parent = x.getParent();
      if (parent instanceof DartLabel && x.getLabel() != null) {
        if (((DartLabel) parent).getLabel().getName().equals(x.getLabel().getName())) {
          getContext().pushScope("<break>");
          addLabelToStatement(x);
          visitGotoStatement(x);
          getContext().popScope();
          return null;
        }
      }
      return visitGotoStatement(x);
    }

    @Override
    public Element visitTryStatement(DartTryStatement x) {
      getContext().pushScope("<try>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitCatchBlock(DartCatchBlock x) {
      getContext().pushScope("<block>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitDoWhileStatement(DartDoWhileStatement x) {
      getContext().pushScope("<do>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitWhileStatement(DartWhileStatement x) {
      getContext().pushScope("<while>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitIfStatement(DartIfStatement x) {
      getContext().pushScope("<if>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitForInStatement(DartForInStatement x) {
      getContext().pushScope("<for in>");
      addLabelToStatement(x);

      if (x.introducesVariable()) {
        resolveVariableStatement(x.getVariableStatement(), true);
      } else {
        x.getIdentifier().accept(this);
      }
      x.getIterable().accept(this);
      x.getBody().accept(this);
      getContext().popScope();
      return null;
    }

    private void addLabelToStatement(DartStatement x) {
      if (currentLabel != null) {
        DartNode parent = x.getParent();
        if (parent instanceof DartLabel) {
          getContext().getScope().setLabel(currentLabel);
          labelsInScopes.add(currentLabel);
        }
      }
    }

    @Override
    public Element visitForStatement(DartForStatement x) {
      getContext().pushScope("<for>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }


    @Override
    public Element visitSwitchStatement(DartSwitchStatement x) {
      getContext().pushScope("<switch>");
      addLabelToStatement(x);
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitSwitchMember(DartSwitchMember x) {
      getContext().pushScope("<switch member>");
      x.visitChildren(this);
      getContext().popScope();
      return null;
    }

    @Override
    public Element visitThisExpression(DartThisExpression x) {
      if (ElementKind.of(currentHolder).equals(ElementKind.LIBRARY)) {
        onError(x, ResolverErrorCode.THIS_ON_TOP_LEVEL);
      } else if (currentMethod == null) {
        onError(x, ResolverErrorCode.THIS_OUTSIDE_OF_METHOD);
      } else if (currentMethod.getModifiers().isStatic()) {
        onError(x, ResolverErrorCode.THIS_IN_STATIC_METHOD);
      } else if (currentMethod.getModifiers().isFactory()) {
        onError(x, ResolverErrorCode.THIS_IN_FACTORY_CONSTRUCTOR);
      } else if (inInitializer) {
        onError(x, ResolverErrorCode.THIS_IN_INITIALIZER_AS_EXPRESSION);
      }
      return null;
    }

    @Override
    public Element visitSuperExpression(DartSuperExpression x) {
      if (ElementKind.of(currentHolder).equals(ElementKind.LIBRARY)) {
        onError(x, ResolverErrorCode.SUPER_ON_TOP_LEVEL);
      } else if (currentMethod == null) {
        onError(x, ResolverErrorCode.SUPER_OUTSIDE_OF_METHOD);
      } else if (currentMethod.getModifiers().isStatic()) {
        onError(x, ResolverErrorCode.SUPER_IN_STATIC_METHOD);
      } else if  (currentMethod.getModifiers().isFactory()) {
        onError(x, ResolverErrorCode.SUPER_IN_FACTORY_CONSTRUCTOR);
      } else {
        return recordElement(x, Elements.superElement(
            x, ((ClassElement) currentHolder).getSupertype().getElement()));
      }
      return null;
    }

    @Override
    public Element visitSuperConstructorInvocation(DartSuperConstructorInvocation x) {
      visit(x.getArguments());
      String name = x.getName() == null ? "" : x.getName().getName();
      InterfaceType supertype = ((ClassElement) currentHolder).getSupertype();
      ConstructorElement element;
      if (supertype == null) {
        element = null;
      } else {
        ClassElement classElement = supertype.getElement();
        element = Elements.lookupConstructor(classElement, name);
        if (element == null && "".equals(name) && x.getArguments().isEmpty()
            && Elements.needsImplicitDefaultConstructor(classElement)) {
          element = new SyntheticDefaultConstructorElement(null, classElement, typeProvider);
        }
      }
      if (element == null) {
        onError(x, ResolverErrorCode.CANNOT_RESOLVE_SUPER_CONSTRUCTOR, name);
      }
      return recordElement(x, element);
    }

    @Override
    public Element visitNamedExpression(DartNamedExpression node) {
      // Intentionally skip the expression's name -- it's stored as an identifier, but doesn't need
      // to be resolved.
      return node.getExpression().accept(this);
    }

    @Override
    public Element visitIdentifier(DartIdentifier x) {
      return resolveIdentifier(x, false);
    }

    private Element resolveIdentifier(DartIdentifier x, boolean isQualifier) {
      if (x.getParent() instanceof DartLabel) {
        return x.getElement();
      }
      Scope scope = getContext().getScope();
      String name = x.getName();
      Element element = scope.findElement(scope.getLibrary(), name);
      if (element == null) {
        // A private identifier could refer to a field in a different library. In this case
        // we want to provide a more useful error message in the type analyzer.
        if (DartIdentifier.isPrivateName(name)) {
          Element found = scope.findElement(null, name);
          if (found != null) {
            Element enclosingElement = found.getEnclosingElement();
            String referencedElementName = enclosingElement == null
                ? name : String.format("%s.%s", enclosingElement.getName(), name);
            onError(x, ResolverErrorCode.ILLEGAL_ACCESS_TO_PRIVATE_MEMBER,
                            name, referencedElementName);
          }
        }
        if (isStaticContextOrInitializer()) {
          onError(x, ResolverErrorCode.CANNOT_BE_RESOLVED, name);
        }
      } else {
        element = checkResolvedIdentifier(x, isQualifier, scope, name, element);
      }

      if (inInitializer && (element != null && element.getKind().equals(ElementKind.FIELD))) {
        if (!element.getModifiers().isStatic() && !Elements.isTopLevel(element)) {
          onError(x, ResolverErrorCode.CANNOT_ACCESS_FIELD_IN_INIT);
        }
      }

      // If we we haven't resolved the identifier, it will be normalized to
      // this.<identifier>.

      return recordElement(x, element);
    }

    /**
     * Possibly recursive check on the resolved identifier.
     */
    private Element checkResolvedIdentifier(DartIdentifier x, boolean isQualifier, Scope scope,
                                            String name, Element element) {
      switch (element.getKind()) {
        case FIELD:
          if (inStaticContext(currentMethod) && !inStaticContext(element)) {
            onError(x, ResolverErrorCode.ILLEGAL_FIELD_ACCESS_FROM_STATIC,
                name);
          }
          break;
        case METHOD:
          if (inStaticContext(currentMethod) && !inStaticContext(element)) {
            onError(x, ResolverErrorCode.ILLEGAL_METHOD_ACCESS_FROM_STATIC,
                name);
          }
          break;
        case CLASS:
          if (!isQualifier) {
            onError(x, ResolverErrorCode.IS_A_CLASS, name);
          }
          break;
        case TYPE_VARIABLE:
          // Type variables are not legal in identifier expressions, but the type variable
          // may be hiding a class element.
          LibraryElement libraryElement = scope.getLibrary();
          Scope libraryScope = libraryElement.getScope();
          // dip again at the library level.
          element = libraryScope.findElement(libraryElement, name);
          if (element == null) {
            onError(x, ResolverErrorCode.TYPE_VARIABLE_NOT_ALLOWED_IN_IDENTIFIER);
          } else {
            return checkResolvedIdentifier(x, isQualifier, libraryScope, name, element);
          }
          break;
        default:
          break;
      }
      return element;
    }

    @Override
    public Element visitTypeNode(DartTypeNode x) {
      Element result = resolveType(x, inStaticContext(currentMethod), inFactoryContext(currentMethod),
          ResolverErrorCode.NO_SUCH_TYPE).getElement();
     return result;
    }

    @Override
    public Element visitPropertyAccess(DartPropertyAccess x) {
      Element qualifier = resolveQualifier(x.getQualifier());
      Element element = null;
      switch (ElementKind.of(qualifier)) {
        case CLASS:
          // Must be a static field.
          element = Elements.findElement(((ClassElement) qualifier), x.getPropertyName());
          switch (ElementKind.of(element)) {
            case FIELD:
              FieldElement field = (FieldElement) element;
              if (!field.getModifiers().isStatic()) {
                onError(x.getName(), ResolverErrorCode.NOT_A_STATIC_FIELD,
                    x.getPropertyName());
              }
              if (Elements.inGetterContext(x)) {
                if (field.getGetter() == null  && field.getSetter() != null) {
                  onError(x.getName(), ResolverErrorCode.FIELD_DOES_NOT_HAVE_A_GETTER);
                }
              }
              if (Elements.inSetterContext(x)) {
                if (field.getSetter() == null && field.getGetter() != null) {
                  onError(x.getName(), ResolverErrorCode.FIELD_DOES_NOT_HAVE_A_SETTER);
                }
              }              
              
              break;

            case NONE:
              onError(x.getName(), ResolverErrorCode.CANNOT_BE_RESOLVED,
                  x.getPropertyName());
              break;

            case METHOD:
              MethodElement method = (MethodElement) element;
              if (!method.getModifiers().isStatic()) {
                onError(x.getName(), ResolverErrorCode.NOT_A_STATIC_METHOD,
                    x.getPropertyName());
              }
              break;

            default:
              onError(x.getName(), ResolverErrorCode.EXPECTED_STATIC_FIELD,
                  element.getKind());
              break;
          }
          break;

        case SUPER:
          ClassElement cls = ((SuperElement) qualifier).getClassElement();
          Member member = cls.getType().lookupMember(x.getPropertyName());
          if (member != null) {
            element = member.getElement();
          }
          switch (ElementKind.of(element)) {
            case FIELD:
              FieldElement field = (FieldElement) element;
              if (field.getModifiers().isStatic()) {
                onError(x.getName(), ResolverErrorCode.NOT_AN_INSTANCE_FIELD,
                  x.getPropertyName());
              }
              break;
            case METHOD:
              MethodElement method = (MethodElement) element;
              if (method.isStatic()) {
                onError(x.getName(), ResolverErrorCode.NOT_AN_INSTANCE_FIELD,
                  x.getPropertyName());
              }
              break;

            case NONE:
              onError(x.getName(), ResolverErrorCode.CANNOT_BE_RESOLVED,
                  x.getPropertyName());
              break;

            default:
              onError(x.getName(),
                ResolverErrorCode.EXPECTED_AN_INSTANCE_FIELD_IN_SUPER_CLASS,
                element.getKind());
              break;
          }
          break;

        case LIBRARY_PREFIX:
          // Library prefix, lookup the element in the referenced library.
          Scope scope = ((LibraryPrefixElement) qualifier).getScope();
          element = scope.findElement(scope.getLibrary(), x.getPropertyName());
          if (element == null) {
            onError(x, ResolverErrorCode.CANNOT_BE_RESOLVED_LIBRARY,
                x.getPropertyName(), qualifier.getName());
          }
          break;

        default:
          break;
      }
      if (x.getName() != null) {
        recordElement(x.getName(), element);
      }
      return recordElement(x, element);
    }

    private Element resolveQualifier(DartNode qualifier) {
      return (qualifier instanceof DartIdentifier)
          ? resolveIdentifier((DartIdentifier) qualifier, true)
          : qualifier.accept(this);
    }

    @Override
    public Element visitMethodInvocation(DartMethodInvocation x) {
      Element target = resolveQualifier(x.getTarget());
      Element element = null;

      switch (ElementKind.of(target)) {
        case CLASS: {
          // Must be a static method or field.
          ClassElement classElement = (ClassElement) target;
          element = Elements.lookupLocalMethod(classElement, x.getFunctionNameString());
          if (element == null) {
            element = Elements.lookupLocalField(classElement, x.getFunctionNameString());
          }
          if (element == null || !element.getModifiers().isStatic()) {
            diagnoseErrorInMethodInvocation(x, classElement, element);
          }
          break;
        }

        case SUPER: {
          if (x.getParent() instanceof DartInitializer) {
            onError(x, ResolverErrorCode.SUPER_METHOD_INVOCATION_IN_CONSTRUCTOR_INITIALIZER);
          }
          // Must be a superclass' method or field.
          ClassElement classElement = ((SuperElement) target).getClassElement();
          InterfaceType type = classElement.getType();
          Member member = type.lookupMember(x.getFunctionNameString());
          if (member != null) {
            if (!member.getElement().getModifiers().isStatic()) {
              element = member.getElement();
              // Must be accessible.
              if (!Elements.isAccessible(context.getScope().getLibrary(), element)) {
                onError(x, ResolverErrorCode.CANNOT_ACCESS_METHOD, x.getFunctionNameString());
              }
            }
          }
          break;
        }

        case LIBRARY_PREFIX:
          // Library prefix, lookup the element in the reference library.
          LibraryPrefixElement library = ((LibraryPrefixElement) target);
          element = library.getScope().findElement(context.getScope().getLibrary(),
                                                   x.getFunctionNameString());
          if (element == null) {
            diagnoseErrorInMethodInvocation(x, library, null);
          } else {
            x.getFunctionName().setElement(element);
          }
          break;
      }

      checkInvocationTarget(x, currentMethod, target);
      visit(x.getArguments());
      if (x.getFunctionName() != null) {
        recordElement(x.getFunctionName(), element);
      }
      return recordElement(x, element);
    }

    @Override
    public Element visitUnqualifiedInvocation(DartUnqualifiedInvocation x) {
      Scope scope = getContext().getScope();
      Element element = scope.findElement(scope.getLibrary(), x.getTarget().getName());
      ElementKind kind = ElementKind.of(element);
      if (!INVOKABLE_ELEMENTS.contains(kind)) {
        diagnoseErrorInUnqualifiedInvocation(x);
      } else {
        checkInvocationTarget(x, currentMethod, element);
      }
      recordElement(x, element);
      recordElement(x.getTarget(), element);
      visit(x.getArguments());
      return null;
    }

    @Override
    public Element visitFunctionObjectInvocation(DartFunctionObjectInvocation x) {
      x.getTarget().accept(this);
      visit(x.getArguments());
      return null;
    }

    @Override
    public Element visitNewExpression(DartNewExpression x) {
      this.visit(x.getArguments());

      Element element = x.getConstructor().accept(getContext().new Selector() {
        // Only 'new' expressions can have a type in a property access.
        @Override
        public Element visitTypeNode(DartTypeNode type) {
          return recordType(type, resolveType(type, inStaticContext(currentMethod),
                                              inFactoryContext(currentMethod),
                                              ResolverErrorCode.NO_SUCH_TYPE));
        }

        @Override public Element visitPropertyAccess(DartPropertyAccess node) {
          Element element = node.getQualifier().accept(this);
          if (ElementKind.of(element).equals(ElementKind.CLASS)) {
            assert node.getQualifier() instanceof DartTypeNode;
            recordType(node, node.getQualifier().getType());
            return Elements.lookupConstructor(((ClassElement) element), node.getPropertyName());
          } else {
            return null;
          }
        }
      });


      switch (ElementKind.of(element)) {
        case CLASS:
        // Check for default constructor.
        ClassElement classElement = (ClassElement) element;
        element = Elements.lookupConstructor(classElement, "");
        // If no default constructor, may be use implicit default constructor.
        if (element == null
            && x.getArguments().isEmpty()
            && Elements.needsImplicitDefaultConstructor(classElement)) {
          element = new SyntheticDefaultConstructorElement(null, classElement, typeProvider);
        }
        break;
        case TYPE_VARIABLE:
          onError(x.getConstructor(), ResolverErrorCode.NEW_EXPRESSION_CANT_USE_TYPE_VAR);
          return null;
        default:
          break;
      }

      // Will check that element is not null.
      ConstructorElement constructor = checkIsConstructor(x, element);

      // try to lookup the constructor in the default class.
      constructor = resolveInterfaceConstructorInDefaultClass(x.getConstructor(), constructor);

      // Check for using "const" to non-const constructor.
      if (constructor != null) {
        if (x.isConst() && !constructor.getModifiers().isConstant()) {
          onError(x, ResolverErrorCode.CONST_AND_NONCONST_CONSTRUCTOR);
        }
      }

      return recordElement(x, constructor);
    }

    /**
     * If given {@link ConstructorElement} is declared in interface, try to resolve it in
     * corresponding default class.
     *
     * @return the resolved {@link ConstructorElement}, or same as given.
     */
    private ConstructorElement resolveInterfaceConstructorInDefaultClass(HasSourceInfo errorTarget,
        ConstructorElement constructor) {
      // If no default class, use existing constructor.
      if (constructor == null || constructor.getConstructorType().getDefaultClass() == null) {
        return constructor;
      }
      // Prepare elements and names for classes.
      ClassElement originalClass = constructor.getConstructorType();
      ClassElement defaultClass = originalClass.getDefaultClass().getElement();
      String originalClassName = originalClass.getName();
      String defaultClassName = defaultClass.getName();
      // Prepare "qualifier.name" for original constructor.
      String rawOriginalMethodName = Elements.getRawMethodName(constructor);
      int originalDotIndex = rawOriginalMethodName.indexOf('.');
      String originalQualifier = StringUtils.substringBefore(rawOriginalMethodName, ".");
      String originalName = StringUtils.substringAfter(rawOriginalMethodName, ".");
      // Separate checks for cases when factory implements interface and not.
      boolean factoryImplementsInterface = Elements.implementsType(defaultClass, originalClass);
      if (factoryImplementsInterface) {
        for (ConstructorElement defaultConstructor : defaultClass.getConstructors()) {
          String rawDefaultMethodName = Elements.getRawMethodName(defaultConstructor);
          // kI == nI and kF == nF
          if (rawOriginalMethodName.equals(originalClassName)
              && rawDefaultMethodName.equals(defaultClassName)) {
            return defaultConstructor;
          }
          // kI == nI.name and kF == nF.name
          if (originalDotIndex != -1) {
            int defaultDotIndex = rawDefaultMethodName.indexOf('.');
            if (defaultDotIndex != -1) {
              String defaultQualifier = StringUtils.substringBefore(rawDefaultMethodName, ".");
              String defaultName = StringUtils.substringAfter(rawDefaultMethodName, ".");
              if (defaultQualifier.equals(defaultClassName)
                  && originalQualifier.equals(originalClassName)
                  && defaultName.equals(originalName)) {
                return defaultConstructor;
              }
            }
          }
        }
      } else {
        for (ConstructorElement defaultConstructor : defaultClass.getConstructors()) {
          String rawDefaultMethodName = Elements.getRawMethodName(defaultConstructor);
          if (rawDefaultMethodName.equals(rawOriginalMethodName)) {
            return defaultConstructor;
          }
        }
      }
      // If constructor not found, try implicit default constructor of the default class.
      if (Elements.isDefaultConstructor(constructor)
          && (Elements.isSyntheticConstructor(constructor) || factoryImplementsInterface)
          && Elements.needsImplicitDefaultConstructor(defaultClass)) {
        return new SyntheticDefaultConstructorElement(null, defaultClass, typeProvider);
      }
      // Factory constructor not resolved, report error with specific message for each case.
      {
        String expectedFactoryConstructorName;
        if (factoryImplementsInterface) {
          if (originalDotIndex == -1) {
            expectedFactoryConstructorName = defaultClassName;
          } else {
            expectedFactoryConstructorName = defaultClassName + "." + originalName;
          }
        } else {
          expectedFactoryConstructorName = rawOriginalMethodName;
        }
        onError(
            errorTarget,
            ResolverErrorCode.DEFAULT_CONSTRUCTOR_UNRESOLVED,
            expectedFactoryConstructorName,
            defaultClassName);
        return null;
      }
    }

    @Override
    public Element visitGotoStatement(DartGotoStatement x) {
      // Don't bother unless there's a target.
      if (x.getTargetName() != null) {
        Element element = getContext().getScope().findLabel(x.getTargetName(), innermostFunction);
        if (ElementKind.of(element).equals(ElementKind.LABEL)) {
          LabelElement labelElement = (LabelElement) element;
          MethodElement enclosingFunction = (labelElement).getEnclosingFunction();
          if (enclosingFunction == innermostFunction) {
            referencedLabels.add(labelElement);
            return recordElement(x, element);
          }
        }
        diagnoseErrorInGotoStatement(x, element);
      }
      return null;
    }

    public void diagnoseErrorInGotoStatement(DartGotoStatement x, Element element) {
      if (element == null) {
        onError(x.getLabel(), ResolverErrorCode.CANNOT_RESOLVE_LABEL,
            x.getTargetName());
      } else if (ElementKind.of(element).equals(ElementKind.LABEL)) {
        onError(x.getLabel(), ResolverErrorCode.CANNOT_ACCESS_OUTER_LABEL,
            x.getTargetName());
      } else {
        onError(x.getLabel(), ResolverErrorCode.NOT_A_LABEL, x.getTargetName());
      }
    }

    private void diagnoseErrorInMethodInvocation(DartMethodInvocation node, Element classOrLibrary,
                                                 Element element) {
      String name = node.getFunctionNameString();
      ElementKind kind = ElementKind.of(element);
      DartNode errorNode = node.getFunctionName();
      switch (kind) {
        case NONE:
          switch (ElementKind.of(classOrLibrary)) {
            case CLASS:
              onError(errorNode, ResolverErrorCode.CANNOT_RESOLVE_METHOD_IN_CLASS, name, 
                      classOrLibrary.getName());
              break;
            case LIBRARY:
              onError(errorNode, ResolverErrorCode.CANNOT_RESOLVE_METHOD_IN_LIBRARY, name, 
                      classOrLibrary.getName());
              break;              
            default:
              onError(errorNode, ResolverErrorCode.CANNOT_RESOLVE_METHOD, name);
          }
          
          break;

        case CONSTRUCTOR:
          onError(errorNode, ResolverErrorCode.IS_A_CONSTRUCTOR, classOrLibrary.getName(),
                          name);
          break;

        case METHOD: {
          assert !((MethodElement) element).getModifiers().isStatic();
          onError(errorNode, ResolverErrorCode.IS_AN_INSTANCE_METHOD,
              classOrLibrary.getName(), name);
          break;
        }

        default:
          throw context.internalError(errorNode, "Unexpected kind of element: %s", kind);
      }
    }

    private void diagnoseErrorInUnqualifiedInvocation(DartUnqualifiedInvocation node) {
      String name = node.getTarget().getName();
      Scope scope = getContext().getScope();
      Element element = scope.findElement(scope.getLibrary(), name);
      ElementKind kind = ElementKind.of(element);
      switch (kind) {
        case NONE:
          if (isStaticContextOrInitializer()) {
            onError(node, ResolverErrorCode.CANNOT_RESOLVE_METHOD, name);
          }
          if (scope.findElement(null, name) != null) {
            onError(node, ResolverErrorCode.CANNOT_ACCESS_METHOD, name);
          }
          break;

        case CONSTRUCTOR:
          onError(node, ResolverErrorCode.DID_YOU_MEAN_NEW, name, "constructor");
          break;

        case CLASS:
          onError(node, ResolverErrorCode.DID_YOU_MEAN_NEW, name, "class");
          break;

        case TYPE_VARIABLE:
          onError(node, ResolverErrorCode.DID_YOU_MEAN_NEW, name, "type variable");
          break;

        case LABEL:
          onError(node, ResolverErrorCode.CANNOT_CALL_LABEL);
          break;

        case FUNCTION_TYPE_ALIAS:
          onError(node, ResolverErrorCode.CANNOT_CALL_FUNCTION_TYPE_ALIAS);
          break;
          
        case LIBRARY_PREFIX:
          onError(node, ResolverErrorCode.CANNOT_CALL_LIBRARY_PREFIX);
          break;
          
        default:
          throw context.internalError(node, "Unexpected kind of element: %s", kind);
      }
    }

    private void diagnoseErrorInInitializer(DartIdentifier x) {
      String name = x.getName();
      Scope scope = getContext().getScope();
      Element element = scope.findElement(scope.getLibrary(), name);
      ElementKind kind = ElementKind.of(element);
      switch (kind) {
        case NONE:
          onError(x, ResolverErrorCode.CANNOT_RESOLVE_FIELD, name);
          break;

        case FIELD:
          FieldElement field = (FieldElement) element;
          if (field.isStatic()) {
            onError(x, ResolverErrorCode.CANNOT_INIT_STATIC_FIELD_IN_INITIALIZER);
          } else if (field.getModifiers().isAbstractField()) {
            /*
             * If we get here then we know that this is a property accessor and not a true field.
             * If there was a field and property accessor with the same name a name collision error
             * would keep us from reaching this point.
             */
            onError(x, ResolverErrorCode.CANNOT_INIT_STATIC_FIELD_IN_INITIALIZER);
          } else {
            onError(x, ResolverErrorCode.CANNOT_INIT_FIELD_FROM_SUPERCLASS);
          }
          break;

        case METHOD:
          onError(x, ResolverErrorCode.EXPECTED_FIELD_NOT_METHOD, name);
          break;

        case CLASS:
          onError(x, ResolverErrorCode.EXPECTED_FIELD_NOT_CLASS, name);
          break;

        case PARAMETER:
          onError(x, ResolverErrorCode.EXPECTED_FIELD_NOT_PARAMETER, name);
          break;

        case TYPE_VARIABLE:
          onError(x, ResolverErrorCode.EXPECTED_FIELD_NOT_TYPE_VAR, name);
          break;

        case VARIABLE:
        case LABEL:
        default:
          throw context.internalError(x, "Unexpected kind of element: %s", kind);
      }
    }

    @Override
    public Element visitInitializer(DartInitializer x) {
      if (x.getName() != null) {
        // Make sure the identifier is a local instance field.
        FieldElement element = Elements.lookupLocalField(
            (ClassElement) currentHolder, x.getName().getName());
        if (element == null || element.isStatic() || element.getModifiers().isAbstractField()) {
          diagnoseErrorInInitializer(x.getName());
        }
        recordElement(x.getName(), element);
      }

      assert !inInitializer;
      inInitializer = true;
      Element element = x.getValue().accept(this);
      inInitializer = false;
      return element;
    }

    @Override
    public Element visitRedirectConstructorInvocation(DartRedirectConstructorInvocation x) {
      visit(x.getArguments());
      String name = x.getName() != null ? x.getName().getName() : "";
      ConstructorElement element = Elements.lookupConstructor((ClassElement) currentHolder, name);
      if (element == null) {
        onError(x, ResolverErrorCode.CANNOT_RESOLVE_CONSTRUCTOR, name);
      }
      return recordElement(x, element);
    }

    @Override
    public Element visitReturnStatement(DartReturnStatement x) {
      if (x.getValue() != null) {
        // Dart Spec v0.03, section 11.10.
        // Generative constructors cannot return arbitrary expressions in the form: 'return e;'
        // they can though have return statement in the form: 'return;'
        if ((currentMethod == innermostFunction)
            && Elements.isNonFactoryConstructor(currentMethod)) {
          onError(x, ResolverErrorCode.INVALID_RETURN_IN_CONSTRUCTOR);
        }
        return x.getValue().accept(this);
      }
      return null;
    }

    @Override
    public Element visitIntegerLiteral(DartIntegerLiteral node) {
      recordType(node, typeProvider.getIntType());
      return null;
    }

    @Override
    public Element visitDoubleLiteral(DartDoubleLiteral node) {
      recordType(node, typeProvider.getDoubleType());
      return null;
    }

    @Override
    public Element visitBooleanLiteral(DartBooleanLiteral node) {
      recordType(node, typeProvider.getBoolType());
      return null;
    }

    @Override
    public Element visitStringLiteral(DartStringLiteral node) {
      recordType(node, typeProvider.getStringType());
      return null;
    }

    @Override
    public Element visitStringInterpolation(DartStringInterpolation node) {
      node.visitChildren(this);
      recordType(node, typeProvider.getStringType());
      return null;
    }

    Element recordType(DartNode node, Type type) {
      node.setType(type);
      return type.getElement();
    }

    @Override
    public Element visitBinaryExpression(DartBinaryExpression node) {
      Element lhs = resolve(node.getArg1());
      resolve(node.getArg2());
      if (node.getOperator().isAssignmentOperator()) {
        switch (ElementKind.of(lhs)) {
         case FIELD:
         case PARAMETER:
         case VARIABLE:
           if (lhs.getModifiers().isFinal()) {
             topLevelContext.onError(node.getArg1(), ResolverErrorCode.CANNOT_ASSIGN_TO_FINAL,
                                     lhs.getName());
           }
           break;
         case METHOD:
           topLevelContext.onError(node.getArg1(),  ResolverErrorCode.CANNOT_ASSIGN_TO_METHOD,
                                   lhs.getName());
           break;
        }
      }

      return null;
    }

    @Override
    public Element visitMapLiteral(DartMapLiteral node) {
      List<DartTypeNode> originalTypeArgs = node.getTypeArguments();
      List<DartTypeNode> typeArgs = Lists.newArrayList();
      DartTypeNode implicitKey = new DartTypeNode(
          new DartIdentifier("String"));
      switch (originalTypeArgs.size()) {
        case 1:
          typeArgs.add(implicitKey);
          typeArgs.addAll(originalTypeArgs);
          break;
        case 2:
          // Old (pre spec 0.6) map specification
          // TODO(zundel): remove this case after a while (added on 24 Jan 2012)
          typeArgs.add(implicitKey);
          typeArgs.add(originalTypeArgs.get(1));
          topLevelContext.onError(originalTypeArgs.get(0), ResolverErrorCode.DEPRECATED_MAP_LITERAL_SYNTAX);
          break;
        default:
          topLevelContext.onError(node, ResolverErrorCode.WRONG_NUMBER_OF_TYPE_ARGUMENTS,
                                  defaultLiteralMapType,
                                  originalTypeArgs.size(), 1);
          // fall through
        case 0:
          typeArgs.add(implicitKey);
          DartTypeNode implicitValue = new DartTypeNode(new DartIdentifier("Dynamic"));
          typeArgs.add(implicitValue);
          break;
      }

      InterfaceType type =
          topLevelContext.instantiateParameterizedType(
              defaultLiteralMapType.getElement(),
              node,
              typeArgs,
              inStaticContext(currentMethod),
              inFactoryContext(currentMethod),
              ResolverErrorCode.NO_SUCH_TYPE);
      // instantiateParametersType() will complain for wrong number of parameters (!=2)
      recordType(node, type);
      visit(node.getEntries());
      return null;
    }

    @Override
    public Element visitArrayLiteral(DartArrayLiteral node) {
      List<DartTypeNode> typeArgs = node.getTypeArguments();
      InterfaceType type =
          topLevelContext.instantiateParameterizedType(
              rawArrayType.getElement(),
              node,
              typeArgs,
              inStaticContext(currentMethod),
              inFactoryContext(currentMethod),
              ResolverErrorCode.NO_SUCH_TYPE);
      // instantiateParametersType() will complain for wrong number of parameters (!=1)
      recordType(node, type);
      visit(node.getExpressions());
      return null;
    }

    private ConstructorElement checkIsConstructor(DartNewExpression source, Element element) {
      if (!ElementKind.of(element).equals(ElementKind.CONSTRUCTOR)) {
        onError(source.getConstructor(), ResolverErrorCode.NEW_EXPRESSION_NOT_CONSTRUCTOR);
        return null;
      }
      return (ConstructorElement) element;
    }

    private void checkConstructor(DartMethodDefinition node,
                                  ConstructorElement superCall) {
      ClassElement currentClass = (ClassElement) currentHolder;
      if (superCall == null) {
        // Look for a default constructor in our super type
        InterfaceType supertype = currentClass.getSupertype();
        if (supertype != null) {
          superCall = Elements.lookupConstructor(supertype.getElement(), "");
        }
      }

      if ((superCall == null)
          && !currentClass.isObject()
          && !currentClass.isObjectChild()) {
        InterfaceType supertype = currentClass.getSupertype();
        if (supertype != null) {
          ClassElement superElement = supertype.getElement();
          if (superElement != null) {
            if (!hasDefaultConstructor(superElement)) {
              onError(node,
                  ResolverErrorCode.CANNOT_RESOLVE_IMPLICIT_CALL_TO_SUPER_CONSTRUCTOR,
                  superElement.getName());
            }
          }
        }
      } else if ((superCall != null)
          && node.getModifiers().isConstant()
          && !superCall.getModifiers().isConstant()) {
        onError(node.getName(),
            ResolverErrorCode.CONST_CONSTRUCTOR_MUST_CALL_CONST_SUPER);
      }
    }

    private void checkInvocationTarget(DartInvocation node,
                                       MethodElement callSite,
                                       Element target) {
      if (callSite != null
          && callSite.isStatic()
          && ElementKind.of(target).equals(ElementKind.METHOD)) {
        if (!target.getModifiers().isStatic() && !Elements.isTopLevel(target)) {
          onError(node, ResolverErrorCode.INSTANCE_METHOD_FROM_STATIC);
        }
      }
    }

    private void checkVariableStatement(DartVariableStatement node,
                                        DartVariable variable,
                                        boolean isImplicitlyInitialized) {
      Modifiers modifiers = node.getModifiers();
      if (modifiers.isFinal()) {
        if (!isImplicitlyInitialized && (variable.getValue() == null)) {
          onError(variable.getName(), ResolverErrorCode.CONSTANTS_MUST_BE_INITIALIZED);
        } else if (isImplicitlyInitialized && (variable.getValue() != null)) {
          onError(variable.getName(), ResolverErrorCode.CANNOT_BE_INITIALIZED);
        } else if (modifiers.isStatic() && modifiers.isFinal() && variable.getValue() != null) {
          resolve(variable.getValue());
          node.setType(variable.getValue().getType());
        }
      }
    }

    private void resolveInitializers(DartMethodDefinition node, Set<FieldElement> intializedFields) {
      Iterator<DartInitializer> initializers = node.getInitializers().iterator();
      ConstructorElement constructorElement = null;
      while (initializers.hasNext()) {
        DartInitializer initializer = initializers.next();
        Element element = resolve(initializer);
        if ((ElementKind.of(element) == ElementKind.CONSTRUCTOR) && initializer.isInvocation()) {
          constructorElement = (ConstructorElement) element;
        } else if (initializer.getName() != null && initializer.getName().getElement() != null
            && initializer.getName().getElement().getModifiers() != null
            && !intializedFields.add((FieldElement)initializer.getName().getElement())) {
          onError(initializer, ResolverErrorCode.DUPLICATE_INITIALIZATION, initializer.getName());
        }
      }

      checkConstructor(node, constructorElement);
    }

    private void onError(HasSourceInfo node, ErrorCode errorCode, Object... arguments) {
      context.onError(node, errorCode, arguments);
    }

    private void onError(SourceInfo node, ErrorCode errorCode, Object... arguments) {
      context.onError(node, errorCode, arguments);
    }

    private boolean inStaticContext(Element element) {
        return element == null || Elements.isTopLevel(element)
                || element.getModifiers().isStatic() || element.getModifiers().isFactory();
    }

    private boolean inFactoryContext(Element element) {
      if (element != null) {
        return element.getModifiers().isFactory();
      }
      return false;
    }

    @Override
    boolean isStaticContext() {
      return inStaticContext(currentMethod);
    }

    @Override
    boolean isFactoryContext() {
    	return inFactoryContext(currentMethod);
    }

    boolean isStaticContextOrInitializer() {
      return inStaticContext(currentMethod) || inInitializer;
    }
  }

  public static class Phase implements DartCompilationPhase {
    /**
     * Executes element resolution on the given compilation unit.
     *
     * @param context The listener through which compilation errors are reported
     *          (not <code>null</code>)
     */
    @Override
    public DartUnit exec(DartUnit unit, DartCompilerContext context,
                         CoreTypeProvider typeProvider) {
      Scope unitScope = unit.getLibrary().getElement().getScope();
      return new Resolver(context, unitScope, typeProvider).exec(unit);
    }
  }

  private void checkRedirectConstructorCycle(List<ConstructorNodeElement> constructors,
                                             ResolutionContext context) {
    for (ConstructorNodeElement element : constructors) {
      if (hasRedirectedConstructorCycle(element)) {
        context.onError(element, ResolverErrorCode.REDIRECTED_CONSTRUCTOR_CYCLE);
      }
    }
  }

  private boolean hasRedirectedConstructorCycle(ConstructorNodeElement constructorElement) {
    Set<ConstructorNodeElement> visited = Sets.newHashSet();
    ConstructorNodeElement next = getNextConstructorInvocation(constructorElement);
    while (next != null) {
      if (visited.contains(next)) {
        return true;
      }
      if (constructorElement.getName().equals(next.getName())) {
        return true;
      }
      visited.add(next);
      next = getNextConstructorInvocation(next);
    }
    return false;
  }
  
  private ConstructorNodeElement getNextConstructorInvocation(ConstructorNodeElement constructor) {
    List<DartInitializer> inits = ((DartMethodDefinition) constructor.getNode()).getInitializers();
    // Parser ensures that redirected constructors can be the only item in the initialization list.
    if (inits.size() == 1) {
      Element element = (Element) inits.get(0).getValue().getElement();
      if (ElementKind.of(element).equals(ElementKind.CONSTRUCTOR)) {
        ConstructorElement nextConstructorElement = (ConstructorElement) element;
        ClassElement nextClass = (ClassElement) nextConstructorElement.getEnclosingElement();
        ClassElement currentClass = (ClassElement) constructor.getEnclosingElement();
        if (nextClass == currentClass) {
          return (ConstructorNodeElement) nextConstructorElement;
        }
      }
    }
    return null;
  }
}
