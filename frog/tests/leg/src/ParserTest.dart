// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#import('parser_helper.dart');
#import("../../../leg/tree/tree.dart");

void testStatement(String statement) {
  Node node = parseStatement(statement);
  Expect.isNotNull(node.toString());
}

void testGenericTypes() {
  testStatement('List<T> t;');
  testStatement('List<List<T>> t;');
  testStatement('List<List<List<T>>> t;');
  testStatement('List<List<List<List<T>>>> t;');
  testStatement('List<List<List<List<List<T>>>>> t;');

  testStatement('List<List<T> > t;');
  testStatement('List<List<List<T> >> t;');
  testStatement('List<List<List<List<T> >>> t;');
  testStatement('List<List<List<List<List<T> >>>> t;');

  testStatement('List<List<List<T> > > t;');
  testStatement('List<List<List<List<T> > >> t;');
  testStatement('List<List<List<List<List<T> > >>> t;');

  testStatement('List<List<List<List<T> > > > t;');
  testStatement('List<List<List<List<List<T> > > >> t;');

  testStatement('List<List<List<List<List<T> > > > > t;');

  testStatement('List<List<List<List<List<T> >> >> t;');

  testStatement('List<List<List<List<List<T> >>> > t;');

  testStatement('List<List<List<List<List<T >>> >> t;');

  testStatement('List<T> t;');
  testStatement('List<List<T>> t;');
  testStatement('List<List<List<T>>> t;');
  testStatement('List<List<List<List<T>>>> t;');
  testStatement('List<List<List<List<List<T>>>>> t;');
}

void testPrefixedGenericTypes() {
  testStatement('lib.List<List<T> > t;');
  testStatement('lib.List<List<List<T> >> t;');
  testStatement('lib.List<List<List<List<T> >>> t;');
  testStatement('lib.List<List<List<List<List<T> >>>> t;');

  testStatement('lib.List<List<List<T> > > t;');
  testStatement('lib.List<List<List<List<T> > >> t;');
  testStatement('lib.List<List<List<List<List<T> > >>> t;');

  testStatement('lib.List<List<List<List<T> > > > t;');
  testStatement('lib.List<List<List<List<List<T> > > >> t;');

  testStatement('lib.List<List<List<List<List<T> > > > > t;');

  testStatement('lib.List<List<List<List<List<T> >> >> t;');

  testStatement('lib.List<List<List<List<List<T> >>> > t;');

  testStatement('lib.List<List<List<List<List<T >>> >> t;');
}

void testUnaryExpression() {
  testStatement('x++;');
  // TODO(ahe): reenable following test.
  // testStatement('++x++;');
  testStatement('++x;');
  testStatement('print(x++);');
  // TODO(ahe): reenable following test.
  // testStatement('print(++x++);'); // Accepted by parser, rejected later.
  testStatement('print(++x);');
}

void testChainedMethodCalls() {
  testStatement('MyClass.foo().bar().baz();');
  testStatement('MyClass.foo().-x;'); // Accepted by parser, rejected later.
  testStatement('a.b.c.d();');
}

void testFunctionStatement() {
  testStatement('int f() {}');
  testStatement('void f() {}');
}

void testDoStatement() {
  testStatement('do fisk(); while (hest());');
  testStatement('do { fisk(); } while (hest());');
}

void testWhileStatement() {
  testStatement('while (fisk()) hest();');
  testStatement('while (fisk()) { hest(); }');
}

void testConditionalExpression() {
  ExpressionStatement node = parseStatement("a ? b : c;");
  Conditional conditional = node.expression;

  node = parseStatement("a ? b ? c : d : e;");
  // Should parse as: a ? ( b ? c : d ) : e
  conditional = node.expression;
  Expect.isNotNull(conditional.thenExpression.asConditional());
  Expect.isNotNull(conditional.elseExpression.asSend());

  node = parseStatement("a ? b : c ? d : e;");
  // Should parse as: a ? b : (c ? d : e)
  conditional = node.expression;
  Expect.isNotNull(conditional.thenExpression.asSend());
  Expect.isNotNull(conditional.elseExpression.asConditional());

  node = parseStatement("a ? b ? c : d : e ? f : g;");
  // Should parse as: a ? (b ? c : d) : (e ? f : g)
  conditional = node.expression;
  Expect.isNotNull(conditional.thenExpression.asConditional());
  Expect.isNotNull(conditional.elseExpression.asConditional());

  node = parseStatement("a = b ? c : d;");
  // Should parse as: a = (b ? c : d)
  SendSet sendSet = node.expression;
  Expect.isNotNull(sendSet.arguments.head.asConditional());

  node = parseStatement("a ? b : c = d;");
  // Should parse as: a ? b : (c = d)
  conditional = node.expression;
  Expect.isNull(conditional.thenExpression.asSendSet());
  Expect.isNotNull(conditional.elseExpression.asSendSet());

  node = parseStatement("a ? b = c : d;");
  // Should parse as: a ? (b = c) : d
  conditional = node.expression;
  Expect.isNotNull(conditional.thenExpression.asSendSet());
  Expect.isNull(conditional.elseExpression.asSendSet());

  node = parseStatement("a ? b = c : d = e;");
  // Should parse as: a ? (b = c) : (d = e)
  conditional = node.expression;
  Expect.isNotNull(conditional.thenExpression.asSendSet());
  Expect.isNotNull(conditional.elseExpression.asSendSet());
}

void main() {
  testGenericTypes();
  // TODO(ahe): Enable this test when we handle library prefixes.
  // testPrefixedGenericTypes();
  testUnaryExpression();
  testChainedMethodCalls();
  testFunctionStatement();
  testDoStatement();
  testWhileStatement();
  testConditionalExpression();
}
