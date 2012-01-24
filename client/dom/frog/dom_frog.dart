#library('dom');

// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// DO NOT EDIT
// Auto-generated Dart DOM library.




// TODO(sra): What 'window' do we get in a worker?  Perhaps this
// should return the interface type.
DOMWindow get window() native "return window;";

// TODO(vsm): Revert to Dart method when 508 is fixed.
HTMLDocument get document() native "return window.document;";

class AbstractWorkerJS implements AbstractWorker native "*AbstractWorker" {

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ArrayBufferJS implements ArrayBuffer native "*ArrayBuffer" {

  int get byteLength() native "return this.byteLength;";

  ArrayBufferJS slice(int begin, [int end = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ArrayBufferViewJS implements ArrayBufferView native "*ArrayBufferView" {

  ArrayBufferJS get buffer() native "return this.buffer;";

  int get byteLength() native "return this.byteLength;";

  int get byteOffset() native "return this.byteOffset;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class AttrJS extends NodeJS implements Attr native "*Attr" {

  bool get isId() native "return this.isId;";

  String get name() native "return this.name;";

  ElementJS get ownerElement() native "return this.ownerElement;";

  bool get specified() native "return this.specified;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";
}

class AudioBufferJS implements AudioBuffer native "*AudioBuffer" {

  num get duration() native "return this.duration;";

  num get gain() native "return this.gain;";

  void set gain(num value) native "this.gain = value;";

  int get length() native "return this.length;";

  int get numberOfChannels() native "return this.numberOfChannels;";

  num get sampleRate() native "return this.sampleRate;";

  Float32ArrayJS getChannelData(int channelIndex) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class AudioBufferSourceNodeJS extends AudioSourceNodeJS implements AudioBufferSourceNode native "*AudioBufferSourceNode" {

  AudioBufferJS get buffer() native "return this.buffer;";

  void set buffer(AudioBufferJS value) native "this.buffer = value;";

  AudioGainJS get gain() native "return this.gain;";

  bool get loop() native "return this.loop;";

  void set loop(bool value) native "this.loop = value;";

  bool get looping() native "return this.looping;";

  void set looping(bool value) native "this.looping = value;";

  AudioParamJS get playbackRate() native "return this.playbackRate;";

  void noteGrainOn(num when, num grainOffset, num grainDuration) native;

  void noteOff(num when) native;

  void noteOn(num when) native;
}

class AudioChannelMergerJS extends AudioNodeJS implements AudioChannelMerger native "*AudioChannelMerger" {
}

class AudioChannelSplitterJS extends AudioNodeJS implements AudioChannelSplitter native "*AudioChannelSplitter" {
}

class AudioContextJS implements AudioContext native "*AudioContext" {
  AudioContext() native;


  num get currentTime() native "return this.currentTime;";

  AudioDestinationNodeJS get destination() native "return this.destination;";

  AudioListenerJS get listener() native "return this.listener;";

  EventListener get oncomplete() native "return this.oncomplete;";

  void set oncomplete(EventListener value) native "this.oncomplete = value;";

  num get sampleRate() native "return this.sampleRate;";

  RealtimeAnalyserNodeJS createAnalyser() native;

  BiquadFilterNodeJS createBiquadFilter() native;

  AudioBufferJS createBuffer(var buffer_OR_numberOfChannels, var mixToMono_OR_numberOfFrames, [num sampleRate = null]) native;

  AudioBufferSourceNodeJS createBufferSource() native;

  AudioChannelMergerJS createChannelMerger() native;

  AudioChannelSplitterJS createChannelSplitter() native;

  ConvolverNodeJS createConvolver() native;

  DelayNodeJS createDelayNode() native;

  DynamicsCompressorNodeJS createDynamicsCompressor() native;

  AudioGainNodeJS createGainNode() native;

  HighPass2FilterNodeJS createHighPass2Filter() native;

  JavaScriptAudioNodeJS createJavaScriptNode(int bufferSize) native;

  LowPass2FilterNodeJS createLowPass2Filter() native;

  MediaElementAudioSourceNodeJS createMediaElementSource(HTMLMediaElementJS mediaElement) native;

  AudioPannerNodeJS createPanner() native;

  WaveShaperNodeJS createWaveShaper() native;

  void decodeAudioData(ArrayBufferJS audioData, AudioBufferCallback successCallback, [AudioBufferCallback errorCallback = null]) native;

  void startRendering() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class AudioDestinationNodeJS extends AudioNodeJS implements AudioDestinationNode native "*AudioDestinationNode" {

  int get numberOfChannels() native "return this.numberOfChannels;";
}

class AudioGainJS extends AudioParamJS implements AudioGain native "*AudioGain" {
}

class AudioGainNodeJS extends AudioNodeJS implements AudioGainNode native "*AudioGainNode" {

  AudioGainJS get gain() native "return this.gain;";
}

class AudioListenerJS implements AudioListener native "*AudioListener" {

  num get dopplerFactor() native "return this.dopplerFactor;";

  void set dopplerFactor(num value) native "this.dopplerFactor = value;";

  num get speedOfSound() native "return this.speedOfSound;";

  void set speedOfSound(num value) native "this.speedOfSound = value;";

  void setOrientation(num x, num y, num z, num xUp, num yUp, num zUp) native;

  void setPosition(num x, num y, num z) native;

  void setVelocity(num x, num y, num z) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class AudioNodeJS implements AudioNode native "*AudioNode" {

  AudioContextJS get context() native "return this.context;";

  int get numberOfInputs() native "return this.numberOfInputs;";

  int get numberOfOutputs() native "return this.numberOfOutputs;";

  void connect(AudioNodeJS destination, int output, int input) native;

  void disconnect(int output) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class AudioPannerNodeJS extends AudioNodeJS implements AudioPannerNode native "*AudioPannerNode" {

  static final int EQUALPOWER = 0;

  static final int HRTF = 1;

  static final int SOUNDFIELD = 2;

  AudioGainJS get coneGain() native "return this.coneGain;";

  num get coneInnerAngle() native "return this.coneInnerAngle;";

  void set coneInnerAngle(num value) native "this.coneInnerAngle = value;";

  num get coneOuterAngle() native "return this.coneOuterAngle;";

  void set coneOuterAngle(num value) native "this.coneOuterAngle = value;";

  num get coneOuterGain() native "return this.coneOuterGain;";

  void set coneOuterGain(num value) native "this.coneOuterGain = value;";

  AudioGainJS get distanceGain() native "return this.distanceGain;";

  int get distanceModel() native "return this.distanceModel;";

  void set distanceModel(int value) native "this.distanceModel = value;";

  num get maxDistance() native "return this.maxDistance;";

  void set maxDistance(num value) native "this.maxDistance = value;";

  int get panningModel() native "return this.panningModel;";

  void set panningModel(int value) native "this.panningModel = value;";

  num get refDistance() native "return this.refDistance;";

  void set refDistance(num value) native "this.refDistance = value;";

  num get rolloffFactor() native "return this.rolloffFactor;";

  void set rolloffFactor(num value) native "this.rolloffFactor = value;";

  void setOrientation(num x, num y, num z) native;

  void setPosition(num x, num y, num z) native;

  void setVelocity(num x, num y, num z) native;
}

class AudioParamJS implements AudioParam native "*AudioParam" {

  num get defaultValue() native "return this.defaultValue;";

  num get maxValue() native "return this.maxValue;";

  num get minValue() native "return this.minValue;";

  String get name() native "return this.name;";

  int get units() native "return this.units;";

  num get value() native "return this.value;";

  void set value(num value) native "this.value = value;";

  void cancelScheduledValues(num startTime) native;

  void exponentialRampToValueAtTime(num value, num time) native;

  void linearRampToValueAtTime(num value, num time) native;

  void setTargetValueAtTime(num targetValue, num time, num timeConstant) native;

  void setValueAtTime(num value, num time) native;

  void setValueCurveAtTime(Float32ArrayJS values, num time, num duration) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class AudioProcessingEventJS extends EventJS implements AudioProcessingEvent native "*AudioProcessingEvent" {

  AudioBufferJS get inputBuffer() native "return this.inputBuffer;";

  AudioBufferJS get outputBuffer() native "return this.outputBuffer;";
}

class AudioSourceNodeJS extends AudioNodeJS implements AudioSourceNode native "*AudioSourceNode" {
}

class BarInfoJS implements BarInfo native "*BarInfo" {

  bool get visible() native "return this.visible;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class BeforeLoadEventJS extends EventJS implements BeforeLoadEvent native "*BeforeLoadEvent" {

  String get url() native "return this.url;";
}

class BiquadFilterNodeJS extends AudioNodeJS implements BiquadFilterNode native "*BiquadFilterNode" {

  static final int ALLPASS = 7;

  static final int BANDPASS = 2;

  static final int HIGHPASS = 1;

  static final int HIGHSHELF = 4;

  static final int LOWPASS = 0;

  static final int LOWSHELF = 3;

  static final int NOTCH = 6;

  static final int PEAKING = 5;

  AudioParamJS get Q() native "return this.Q;";

  AudioParamJS get frequency() native "return this.frequency;";

  AudioParamJS get gain() native "return this.gain;";

  int get type() native "return this.type;";

  void set type(int value) native "this.type = value;";

  void getFrequencyResponse(Float32ArrayJS frequencyHz, Float32ArrayJS magResponse, Float32ArrayJS phaseResponse) native;
}

class BlobJS implements Blob native "*Blob" {

  int get size() native "return this.size;";

  String get type() native "return this.type;";

  BlobJS webkitSlice([int start = null, int end = null, String contentType = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CDATASectionJS extends TextJS implements CDATASection native "*CDATASection" {
}

class CSSCharsetRuleJS extends CSSRuleJS implements CSSCharsetRule native "*CSSCharsetRule" {

  String get encoding() native "return this.encoding;";

  void set encoding(String value) native "this.encoding = value;";
}

class CSSFontFaceRuleJS extends CSSRuleJS implements CSSFontFaceRule native "*CSSFontFaceRule" {

  CSSStyleDeclarationJS get style() native "return this.style;";
}

class CSSImportRuleJS extends CSSRuleJS implements CSSImportRule native "*CSSImportRule" {

  String get href() native "return this.href;";

  MediaListJS get media() native "return this.media;";

  CSSStyleSheetJS get styleSheet() native "return this.styleSheet;";
}

class CSSMediaRuleJS extends CSSRuleJS implements CSSMediaRule native "*CSSMediaRule" {

  CSSRuleListJS get cssRules() native "return this.cssRules;";

  MediaListJS get media() native "return this.media;";

  void deleteRule(int index) native;

  int insertRule(String rule, int index) native;
}

class CSSPageRuleJS extends CSSRuleJS implements CSSPageRule native "*CSSPageRule" {

  String get selectorText() native "return this.selectorText;";

  void set selectorText(String value) native "this.selectorText = value;";

  CSSStyleDeclarationJS get style() native "return this.style;";
}

class CSSPrimitiveValueJS extends CSSValueJS implements CSSPrimitiveValue native "*CSSPrimitiveValue" {

  static final int CSS_ATTR = 22;

  static final int CSS_CM = 6;

  static final int CSS_COUNTER = 23;

  static final int CSS_DEG = 11;

  static final int CSS_DIMENSION = 18;

  static final int CSS_EMS = 3;

  static final int CSS_EXS = 4;

  static final int CSS_GRAD = 13;

  static final int CSS_HZ = 16;

  static final int CSS_IDENT = 21;

  static final int CSS_IN = 8;

  static final int CSS_KHZ = 17;

  static final int CSS_MM = 7;

  static final int CSS_MS = 14;

  static final int CSS_NUMBER = 1;

  static final int CSS_PC = 10;

  static final int CSS_PERCENTAGE = 2;

  static final int CSS_PT = 9;

  static final int CSS_PX = 5;

  static final int CSS_RAD = 12;

  static final int CSS_RECT = 24;

  static final int CSS_RGBCOLOR = 25;

  static final int CSS_S = 15;

  static final int CSS_STRING = 19;

  static final int CSS_UNKNOWN = 0;

  static final int CSS_URI = 20;

  int get primitiveType() native "return this.primitiveType;";

  CounterJS getCounterValue() native;

  num getFloatValue(int unitType) native;

  RGBColorJS getRGBColorValue() native;

  RectJS getRectValue() native;

  String getStringValue() native;

  void setFloatValue(int unitType, num floatValue) native;

  void setStringValue(int stringType, String stringValue) native;
}

class CSSRuleJS implements CSSRule native "*CSSRule" {

  static final int CHARSET_RULE = 2;

  static final int FONT_FACE_RULE = 5;

  static final int IMPORT_RULE = 3;

  static final int MEDIA_RULE = 4;

  static final int PAGE_RULE = 6;

  static final int STYLE_RULE = 1;

  static final int UNKNOWN_RULE = 0;

  static final int WEBKIT_KEYFRAMES_RULE = 8;

  static final int WEBKIT_KEYFRAME_RULE = 9;

  static final int WEBKIT_REGION_RULE = 10;

  String get cssText() native "return this.cssText;";

  void set cssText(String value) native "this.cssText = value;";

  CSSRuleJS get parentRule() native "return this.parentRule;";

  CSSStyleSheetJS get parentStyleSheet() native "return this.parentStyleSheet;";

  int get type() native "return this.type;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CSSRuleListJS implements CSSRuleList native "*CSSRuleList" {

  int get length() native "return this.length;";

  CSSRuleJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CSSStyleDeclarationJS implements CSSStyleDeclaration native "*CSSStyleDeclaration" {

  String get cssText() native "return this.cssText;";

  void set cssText(String value) native "this.cssText = value;";

  int get length() native "return this.length;";

  CSSRuleJS get parentRule() native "return this.parentRule;";

  CSSValueJS getPropertyCSSValue(String propertyName) native;

  String getPropertyPriority(String propertyName) native;

  String getPropertyShorthand(String propertyName) native;

  String getPropertyValue(String propertyName) native;

  bool isPropertyImplicit(String propertyName) native;

  String item(int index) native;

  String removeProperty(String propertyName) native;

  void setProperty(String propertyName, String value, [String priority = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CSSStyleRuleJS extends CSSRuleJS implements CSSStyleRule native "*CSSStyleRule" {

  String get selectorText() native "return this.selectorText;";

  void set selectorText(String value) native "this.selectorText = value;";

  CSSStyleDeclarationJS get style() native "return this.style;";
}

class CSSStyleSheetJS extends StyleSheetJS implements CSSStyleSheet native "*CSSStyleSheet" {

  CSSRuleListJS get cssRules() native "return this.cssRules;";

  CSSRuleJS get ownerRule() native "return this.ownerRule;";

  CSSRuleListJS get rules() native "return this.rules;";

  int addRule(String selector, String style, [int index = null]) native;

  void deleteRule(int index) native;

  int insertRule(String rule, int index) native;

  void removeRule(int index) native;
}

class CSSUnknownRuleJS extends CSSRuleJS implements CSSUnknownRule native "*CSSUnknownRule" {
}

class CSSValueJS implements CSSValue native "*CSSValue" {

  static final int CSS_CUSTOM = 3;

  static final int CSS_INHERIT = 0;

  static final int CSS_PRIMITIVE_VALUE = 1;

  static final int CSS_VALUE_LIST = 2;

  String get cssText() native "return this.cssText;";

  void set cssText(String value) native "this.cssText = value;";

  int get cssValueType() native "return this.cssValueType;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CSSValueListJS extends CSSValueJS implements CSSValueList native "*CSSValueList" {

  int get length() native "return this.length;";

  CSSValueJS item(int index) native;
}

class CanvasGradientJS implements CanvasGradient native "*CanvasGradient" {

  void addColorStop(num offset, String color) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CanvasPatternJS implements CanvasPattern native "*CanvasPattern" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CanvasPixelArrayJS implements CanvasPixelArray native "*CanvasPixelArray" {

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CanvasRenderingContextJS implements CanvasRenderingContext native "*CanvasRenderingContext" {

  HTMLCanvasElementJS get canvas() native "return this.canvas;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CanvasRenderingContext2DJS extends CanvasRenderingContextJS implements CanvasRenderingContext2D native "*CanvasRenderingContext2D" {

  Dynamic get fillStyle() native "return this.fillStyle;";

  void set fillStyle(Dynamic value) native "this.fillStyle = value;";

  String get font() native "return this.font;";

  void set font(String value) native "this.font = value;";

  num get globalAlpha() native "return this.globalAlpha;";

  void set globalAlpha(num value) native "this.globalAlpha = value;";

  String get globalCompositeOperation() native "return this.globalCompositeOperation;";

  void set globalCompositeOperation(String value) native "this.globalCompositeOperation = value;";

  String get lineCap() native "return this.lineCap;";

  void set lineCap(String value) native "this.lineCap = value;";

  String get lineJoin() native "return this.lineJoin;";

  void set lineJoin(String value) native "this.lineJoin = value;";

  num get lineWidth() native "return this.lineWidth;";

  void set lineWidth(num value) native "this.lineWidth = value;";

  num get miterLimit() native "return this.miterLimit;";

  void set miterLimit(num value) native "this.miterLimit = value;";

  num get shadowBlur() native "return this.shadowBlur;";

  void set shadowBlur(num value) native "this.shadowBlur = value;";

  String get shadowColor() native "return this.shadowColor;";

  void set shadowColor(String value) native "this.shadowColor = value;";

  num get shadowOffsetX() native "return this.shadowOffsetX;";

  void set shadowOffsetX(num value) native "this.shadowOffsetX = value;";

  num get shadowOffsetY() native "return this.shadowOffsetY;";

  void set shadowOffsetY(num value) native "this.shadowOffsetY = value;";

  Dynamic get strokeStyle() native "return this.strokeStyle;";

  void set strokeStyle(Dynamic value) native "this.strokeStyle = value;";

  String get textAlign() native "return this.textAlign;";

  void set textAlign(String value) native "this.textAlign = value;";

  String get textBaseline() native "return this.textBaseline;";

  void set textBaseline(String value) native "this.textBaseline = value;";

  List get webkitLineDash() native "return this.webkitLineDash;";

  void set webkitLineDash(List value) native "this.webkitLineDash = value;";

  num get webkitLineDashOffset() native "return this.webkitLineDashOffset;";

  void set webkitLineDashOffset(num value) native "this.webkitLineDashOffset = value;";

  void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise) native;

  void arcTo(num x1, num y1, num x2, num y2, num radius) native;

  void beginPath() native;

  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y) native;

  void clearRect(num x, num y, num width, num height) native;

  void clearShadow() native;

  void clip() native;

  void closePath() native;

  ImageDataJS createImageData(var imagedata_OR_sw, [num sh = null]) native;

  CanvasGradientJS createLinearGradient(num x0, num y0, num x1, num y1) native;

  CanvasPatternJS createPattern(var canvas_OR_image, String repetitionType) native;

  CanvasGradientJS createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1) native;

  void drawImage(var canvas_OR_image_OR_video, num sx_OR_x, num sy_OR_y, [num sw_OR_width = null, num height_OR_sh = null, num dx = null, num dy = null, num dw = null, num dh = null]) native;

  void drawImageFromRect(HTMLImageElementJS image, [num sx = null, num sy = null, num sw = null, num sh = null, num dx = null, num dy = null, num dw = null, num dh = null, String compositeOperation = null]) native;

  void fill() native;

  void fillRect(num x, num y, num width, num height) native;

  void fillText(String text, num x, num y, [num maxWidth = null]) native;

  ImageDataJS getImageData(num sx, num sy, num sw, num sh) native;

  bool isPointInPath(num x, num y) native;

  void lineTo(num x, num y) native;

  TextMetricsJS measureText(String text) native;

  void moveTo(num x, num y) native;

  void putImageData(ImageDataJS imagedata, num dx, num dy, [num dirtyX = null, num dirtyY = null, num dirtyWidth = null, num dirtyHeight = null]) native;

  void quadraticCurveTo(num cpx, num cpy, num x, num y) native;

  void rect(num x, num y, num width, num height) native;

  void restore() native;

  void rotate(num angle) native;

  void save() native;

  void scale(num sx, num sy) native;

  void setAlpha(num alpha) native;

  void setCompositeOperation(String compositeOperation) native;

  void setFillColor(var c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m = null, num b_OR_y = null, num a_OR_k = null, num a = null]) native;

  void setLineCap(String cap) native;

  void setLineJoin(String join) native;

  void setLineWidth(num width) native;

  void setMiterLimit(num limit) native;

  void setShadow(num width, num height, num blur, [var c_OR_color_OR_grayLevel_OR_r = null, num alpha_OR_g_OR_m = null, num b_OR_y = null, num a_OR_k = null, num a = null]) native;

  void setStrokeColor(var c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m = null, num b_OR_y = null, num a_OR_k = null, num a = null]) native;

  void setTransform(num m11, num m12, num m21, num m22, num dx, num dy) native;

  void stroke() native;

  void strokeRect(num x, num y, num width, num height, [num lineWidth = null]) native;

  void strokeText(String text, num x, num y, [num maxWidth = null]) native;

  void transform(num m11, num m12, num m21, num m22, num dx, num dy) native;

  void translate(num tx, num ty) native;
}

class CharacterDataJS extends NodeJS implements CharacterData native "*CharacterData" {

  String get data() native "return this.data;";

  void set data(String value) native "this.data = value;";

  int get length() native "return this.length;";

  void appendData(String data) native;

  void deleteData(int offset, int length) native;

  void insertData(int offset, String data) native;

  void replaceData(int offset, int length, String data) native;

  String substringData(int offset, int length) native;
}

class ClientRectJS implements ClientRect native "*ClientRect" {

  num get bottom() native "return this.bottom;";

  num get height() native "return this.height;";

  num get left() native "return this.left;";

  num get right() native "return this.right;";

  num get top() native "return this.top;";

  num get width() native "return this.width;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ClientRectListJS implements ClientRectList native "*ClientRectList" {

  int get length() native "return this.length;";

  ClientRectJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ClipboardJS implements Clipboard native "*Clipboard" {

  String get dropEffect() native "return this.dropEffect;";

  void set dropEffect(String value) native "this.dropEffect = value;";

  String get effectAllowed() native "return this.effectAllowed;";

  void set effectAllowed(String value) native "this.effectAllowed = value;";

  FileListJS get files() native "return this.files;";

  DataTransferItemListJS get items() native "return this.items;";

  List get types() native "return this.types;";

  void clearData([String type = null]) native;

  void getData(String type) native;

  bool setData(String type, String data) native;

  void setDragImage(HTMLImageElementJS image, int x, int y) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CloseEventJS extends EventJS implements CloseEvent native "*CloseEvent" {

  int get code() native "return this.code;";

  String get reason() native "return this.reason;";

  bool get wasClean() native "return this.wasClean;";
}

class CommentJS extends CharacterDataJS implements Comment native "*Comment" {
}

class CompositionEventJS extends UIEventJS implements CompositionEvent native "*CompositionEvent" {

  String get data() native "return this.data;";

  void initCompositionEvent(String typeArg, bool canBubbleArg, bool cancelableArg, DOMWindowJS viewArg, String dataArg) native;
}

class ConsoleJS implements Console native "=(typeof console == 'undefined' ? {} : console)" {

  MemoryInfoJS get memory() native "return this.memory;";

  List get profiles() native "return this.profiles;";

  void assertCondition(bool condition) native;

  void count() native;

  void debug(Object arg) native;

  void dir() native;

  void dirxml() native;

  void error(Object arg) native;

  void group() native;

  void groupCollapsed() native;

  void groupEnd() native;

  void info(Object arg) native;

  void log(Object arg) native;

  void markTimeline() native;

  void profile(String title) native;

  void profileEnd(String title) native;

  void time(String title) native;

  void timeEnd(String title) native;

  void timeStamp() native;

  void trace(Object arg) native;

  void warn(Object arg) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ConvolverNodeJS extends AudioNodeJS implements ConvolverNode native "*ConvolverNode" {

  AudioBufferJS get buffer() native "return this.buffer;";

  void set buffer(AudioBufferJS value) native "this.buffer = value;";

  bool get normalize() native "return this.normalize;";

  void set normalize(bool value) native "this.normalize = value;";
}

class CoordinatesJS implements Coordinates native "*Coordinates" {

  num get accuracy() native "return this.accuracy;";

  num get altitude() native "return this.altitude;";

  num get altitudeAccuracy() native "return this.altitudeAccuracy;";

  num get heading() native "return this.heading;";

  num get latitude() native "return this.latitude;";

  num get longitude() native "return this.longitude;";

  num get speed() native "return this.speed;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CounterJS implements Counter native "*Counter" {

  String get identifier() native "return this.identifier;";

  String get listStyle() native "return this.listStyle;";

  String get separator() native "return this.separator;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CryptoJS implements Crypto native "*Crypto" {

  void getRandomValues(ArrayBufferViewJS array) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class CustomEventJS extends EventJS implements CustomEvent native "*CustomEvent" {

  Object get detail() native "return this.detail;";

  void initCustomEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object detailArg) native;
}

class DOMApplicationCacheJS implements DOMApplicationCache native "*DOMApplicationCache" {

  static final int CHECKING = 2;

  static final int DOWNLOADING = 3;

  static final int IDLE = 1;

  static final int OBSOLETE = 5;

  static final int UNCACHED = 0;

  static final int UPDATEREADY = 4;

  int get status() native "return this.status;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void swapCache() native;

  void update() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMExceptionJS implements DOMException native "*DOMException" {

  static final int ABORT_ERR = 20;

  static final int DATA_CLONE_ERR = 25;

  static final int DOMSTRING_SIZE_ERR = 2;

  static final int HIERARCHY_REQUEST_ERR = 3;

  static final int INDEX_SIZE_ERR = 1;

  static final int INUSE_ATTRIBUTE_ERR = 10;

  static final int INVALID_ACCESS_ERR = 15;

  static final int INVALID_CHARACTER_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 13;

  static final int INVALID_NODE_TYPE_ERR = 24;

  static final int INVALID_STATE_ERR = 11;

  static final int NAMESPACE_ERR = 14;

  static final int NETWORK_ERR = 19;

  static final int NOT_FOUND_ERR = 8;

  static final int NOT_SUPPORTED_ERR = 9;

  static final int NO_DATA_ALLOWED_ERR = 6;

  static final int NO_MODIFICATION_ALLOWED_ERR = 7;

  static final int QUOTA_EXCEEDED_ERR = 22;

  static final int SECURITY_ERR = 18;

  static final int SYNTAX_ERR = 12;

  static final int TIMEOUT_ERR = 23;

  static final int TYPE_MISMATCH_ERR = 17;

  static final int URL_MISMATCH_ERR = 21;

  static final int VALIDATION_ERR = 16;

  static final int WRONG_DOCUMENT_ERR = 4;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMFileSystemJS implements DOMFileSystem native "*DOMFileSystem" {

  String get name() native "return this.name;";

  DirectoryEntryJS get root() native "return this.root;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMFileSystemSyncJS implements DOMFileSystemSync native "*DOMFileSystemSync" {

  String get name() native "return this.name;";

  DirectoryEntrySyncJS get root() native "return this.root;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMFormDataJS implements DOMFormData native "*DOMFormData" {

  void append(String name, String value, String filename) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMImplementationJS implements DOMImplementation native "*DOMImplementation" {

  CSSStyleSheetJS createCSSStyleSheet(String title, String media) native;

  DocumentJS createDocument(String namespaceURI, String qualifiedName, DocumentTypeJS doctype) native;

  DocumentTypeJS createDocumentType(String qualifiedName, String publicId, String systemId) native;

  HTMLDocumentJS createHTMLDocument(String title) native;

  bool hasFeature(String feature, String version) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMMimeTypeJS implements DOMMimeType native "*DOMMimeType" {

  String get description() native "return this.description;";

  DOMPluginJS get enabledPlugin() native "return this.enabledPlugin;";

  String get suffixes() native "return this.suffixes;";

  String get type() native "return this.type;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMMimeTypeArrayJS implements DOMMimeTypeArray native "*DOMMimeTypeArray" {

  int get length() native "return this.length;";

  DOMMimeTypeJS item(int index) native;

  DOMMimeTypeJS namedItem(String name) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMParserJS implements DOMParser native "*DOMParser" {

  DocumentJS parseFromString(String str, String contentType) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMPluginJS implements DOMPlugin native "*DOMPlugin" {

  String get description() native "return this.description;";

  String get filename() native "return this.filename;";

  int get length() native "return this.length;";

  String get name() native "return this.name;";

  DOMMimeTypeJS item(int index) native;

  DOMMimeTypeJS namedItem(String name) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMPluginArrayJS implements DOMPluginArray native "*DOMPluginArray" {

  int get length() native "return this.length;";

  DOMPluginJS item(int index) native;

  DOMPluginJS namedItem(String name) native;

  void refresh(bool reload) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMSelectionJS implements DOMSelection native "*DOMSelection" {

  NodeJS get anchorNode() native "return this.anchorNode;";

  int get anchorOffset() native "return this.anchorOffset;";

  NodeJS get baseNode() native "return this.baseNode;";

  int get baseOffset() native "return this.baseOffset;";

  NodeJS get extentNode() native "return this.extentNode;";

  int get extentOffset() native "return this.extentOffset;";

  NodeJS get focusNode() native "return this.focusNode;";

  int get focusOffset() native "return this.focusOffset;";

  bool get isCollapsed() native "return this.isCollapsed;";

  int get rangeCount() native "return this.rangeCount;";

  String get type() native "return this.type;";

  void addRange(RangeJS range) native;

  void collapse(NodeJS node, int index) native;

  void collapseToEnd() native;

  void collapseToStart() native;

  bool containsNode(NodeJS node, bool allowPartial) native;

  void deleteFromDocument() native;

  void empty() native;

  void extend(NodeJS node, int offset) native;

  RangeJS getRangeAt(int index) native;

  void modify(String alter, String direction, String granularity) native;

  void removeAllRanges() native;

  void selectAllChildren(NodeJS node) native;

  void setBaseAndExtent(NodeJS baseNode, int baseOffset, NodeJS extentNode, int extentOffset) native;

  void setPosition(NodeJS node, int offset) native;

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMSettableTokenListJS extends DOMTokenListJS implements DOMSettableTokenList native "*DOMSettableTokenList" {

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";
}

class DOMTokenListJS implements DOMTokenList native "*DOMTokenList" {

  int get length() native "return this.length;";

  void add(String token) native;

  bool contains(String token) native;

  String item(int index) native;

  void remove(String token) native;

  String toString() native;

  bool toggle(String token) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMURLJS implements DOMURL native "*DOMURL" {

  String createObjectURL(BlobJS blob) native;

  void revokeObjectURL(String url) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DOMWindowJS implements DOMWindow native "@*DOMWindow" {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  DOMApplicationCacheJS get applicationCache() native "return this.applicationCache;";

  NavigatorJS get clientInformation() native "return this.clientInformation;";

  void set clientInformation(NavigatorJS value) native "this.clientInformation = value;";

  bool get closed() native "return this.closed;";

  ConsoleJS get console() native "return this.console;";

  void set console(ConsoleJS value) native "this.console = value;";

  CryptoJS get crypto() native "return this.crypto;";

  String get defaultStatus() native "return this.defaultStatus;";

  void set defaultStatus(String value) native "this.defaultStatus = value;";

  String get defaultstatus() native "return this.defaultstatus;";

  void set defaultstatus(String value) native "this.defaultstatus = value;";

  num get devicePixelRatio() native "return this.devicePixelRatio;";

  void set devicePixelRatio(num value) native "this.devicePixelRatio = value;";

  DocumentJS get document() native "return this.document;";

  EventJS get event() native "return this.event;";

  void set event(EventJS value) native "this.event = value;";

  ElementJS get frameElement() native "return this.frameElement;";

  DOMWindowJS get frames() native "return this.frames;";

  void set frames(DOMWindowJS value) native "this.frames = value;";

  HistoryJS get history() native "return this.history;";

  void set history(HistoryJS value) native "this.history = value;";

  int get innerHeight() native "return this.innerHeight;";

  void set innerHeight(int value) native "this.innerHeight = value;";

  int get innerWidth() native "return this.innerWidth;";

  void set innerWidth(int value) native "this.innerWidth = value;";

  int get length() native "return this.length;";

  void set length(int value) native "this.length = value;";

  StorageJS get localStorage() native "return this.localStorage;";

  LocationJS get location() native "return this.location;";

  void set location(LocationJS value) native "this.location = value;";

  BarInfoJS get locationbar() native "return this.locationbar;";

  void set locationbar(BarInfoJS value) native "this.locationbar = value;";

  BarInfoJS get menubar() native "return this.menubar;";

  void set menubar(BarInfoJS value) native "this.menubar = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  NavigatorJS get navigator() native "return this.navigator;";

  void set navigator(NavigatorJS value) native "this.navigator = value;";

  bool get offscreenBuffering() native "return this.offscreenBuffering;";

  void set offscreenBuffering(bool value) native "this.offscreenBuffering = value;";

  DOMWindowJS get opener() native "return this.opener;";

  void set opener(DOMWindowJS value) native "this.opener = value;";

  int get outerHeight() native "return this.outerHeight;";

  void set outerHeight(int value) native "this.outerHeight = value;";

  int get outerWidth() native "return this.outerWidth;";

  void set outerWidth(int value) native "this.outerWidth = value;";

  int get pageXOffset() native "return this.pageXOffset;";

  int get pageYOffset() native "return this.pageYOffset;";

  DOMWindowJS get parent() native "return this.parent;";

  void set parent(DOMWindowJS value) native "this.parent = value;";

  PerformanceJS get performance() native "return this.performance;";

  void set performance(PerformanceJS value) native "this.performance = value;";

  BarInfoJS get personalbar() native "return this.personalbar;";

  void set personalbar(BarInfoJS value) native "this.personalbar = value;";

  ScreenJS get screen() native "return this.screen;";

  void set screen(ScreenJS value) native "this.screen = value;";

  int get screenLeft() native "return this.screenLeft;";

  void set screenLeft(int value) native "this.screenLeft = value;";

  int get screenTop() native "return this.screenTop;";

  void set screenTop(int value) native "this.screenTop = value;";

  int get screenX() native "return this.screenX;";

  void set screenX(int value) native "this.screenX = value;";

  int get screenY() native "return this.screenY;";

  void set screenY(int value) native "this.screenY = value;";

  int get scrollX() native "return this.scrollX;";

  void set scrollX(int value) native "this.scrollX = value;";

  int get scrollY() native "return this.scrollY;";

  void set scrollY(int value) native "this.scrollY = value;";

  BarInfoJS get scrollbars() native "return this.scrollbars;";

  void set scrollbars(BarInfoJS value) native "this.scrollbars = value;";

  DOMWindowJS get self() native "return this.self;";

  void set self(DOMWindowJS value) native "this.self = value;";

  StorageJS get sessionStorage() native "return this.sessionStorage;";

  String get status() native "return this.status;";

  void set status(String value) native "this.status = value;";

  BarInfoJS get statusbar() native "return this.statusbar;";

  void set statusbar(BarInfoJS value) native "this.statusbar = value;";

  StyleMediaJS get styleMedia() native "return this.styleMedia;";

  BarInfoJS get toolbar() native "return this.toolbar;";

  void set toolbar(BarInfoJS value) native "this.toolbar = value;";

  DOMWindowJS get top() native "return this.top;";

  void set top(DOMWindowJS value) native "this.top = value;";

  IDBFactoryJS get webkitIndexedDB() native "return this.webkitIndexedDB;";

  NotificationCenterJS get webkitNotifications() native "return this.webkitNotifications;";

  StorageInfoJS get webkitStorageInfo() native "return this.webkitStorageInfo;";

  DOMURLJS get webkitURL() native "return this.webkitURL;";

  DOMWindowJS get window() native "return this.window;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void alert(String message) native;

  String atob(String string) native;

  void blur() native;

  String btoa(String string) native;

  void captureEvents() native;

  void clearInterval(int handle) native;

  void clearTimeout(int handle) native;

  void close() native;

  bool confirm(String message) native;

  bool dispatchEvent(EventJS evt) native;

  bool find(String string, bool caseSensitive, bool backwards, bool wrap, bool wholeWord, bool searchInFrames, bool showDialog) native;

  void focus() native;

  CSSStyleDeclarationJS getComputedStyle(ElementJS element, String pseudoElement) native;

  CSSRuleListJS getMatchedCSSRules(ElementJS element, String pseudoElement) native;

  DOMSelectionJS getSelection() native;

  MediaQueryListJS matchMedia(String query) native;

  void moveBy(num x, num y) native;

  void moveTo(num x, num y) native;

  DOMWindowJS open(String url, String name, [String options = null]) native;

  void postMessage(String message, String targetOrigin, [List messagePorts = null]) native;

  void print() native;

  String prompt(String message, String defaultValue) native;

  void releaseEvents() native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void resizeBy(num x, num y) native;

  void resizeTo(num width, num height) native;

  void scroll(int x, int y) native;

  void scrollBy(int x, int y) native;

  void scrollTo(int x, int y) native;

  int setInterval(TimeoutHandler handler, int timeout) native;

  int setTimeout(TimeoutHandler handler, int timeout) native;

  Object showModalDialog(String url, [Object dialogArgs = null, String featureArgs = null]) native;

  void stop() native;

  void webkitCancelAnimationFrame(int id) native;

  void webkitCancelRequestAnimationFrame(int id) native;

  WebKitPointJS webkitConvertPointFromNodeToPage(NodeJS node, WebKitPointJS p) native;

  WebKitPointJS webkitConvertPointFromPageToNode(NodeJS node, WebKitPointJS p) native;

  void webkitPostMessage(String message, String targetOrigin, [List transferList = null]) native;

  int webkitRequestAnimationFrame(RequestAnimationFrameCallback callback, ElementJS element) native;

  void webkitRequestFileSystem(int type, int size, FileSystemCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DataTransferItemJS implements DataTransferItem native "*DataTransferItem" {

  String get kind() native "return this.kind;";

  String get type() native "return this.type;";

  BlobJS getAsFile() native;

  void getAsString(StringCallback callback) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DataTransferItemListJS implements DataTransferItemList native "*DataTransferItemList" {

  int get length() native "return this.length;";

  void add(String data, String type) native;

  void clear() native;

  DataTransferItemJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DataViewJS extends ArrayBufferViewJS implements DataView native "*DataView" {

  num getFloat32(int byteOffset, [bool littleEndian = null]) native;

  num getFloat64(int byteOffset, [bool littleEndian = null]) native;

  int getInt16(int byteOffset, [bool littleEndian = null]) native;

  int getInt32(int byteOffset, [bool littleEndian = null]) native;

  Object getInt8() native;

  int getUint16(int byteOffset, [bool littleEndian = null]) native;

  int getUint32(int byteOffset, [bool littleEndian = null]) native;

  Object getUint8() native;

  void setFloat32(int byteOffset, num value, [bool littleEndian = null]) native;

  void setFloat64(int byteOffset, num value, [bool littleEndian = null]) native;

  void setInt16(int byteOffset, int value, [bool littleEndian = null]) native;

  void setInt32(int byteOffset, int value, [bool littleEndian = null]) native;

  void setInt8() native;

  void setUint16(int byteOffset, int value, [bool littleEndian = null]) native;

  void setUint32(int byteOffset, int value, [bool littleEndian = null]) native;

  void setUint8() native;
}

class DatabaseJS implements Database native "*Database" {

  String get version() native "return this.version;";

  void changeVersion(String oldVersion, String newVersion, [SQLTransactionCallback callback = null, SQLTransactionErrorCallback errorCallback = null, VoidCallback successCallback = null]) native;

  void readTransaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback = null, VoidCallback successCallback = null]) native;

  void transaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback = null, VoidCallback successCallback = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DatabaseSyncJS implements DatabaseSync native "*DatabaseSync" {

  String get lastErrorMessage() native "return this.lastErrorMessage;";

  String get version() native "return this.version;";

  void changeVersion(String oldVersion, String newVersion, [SQLTransactionSyncCallback callback = null]) native;

  void readTransaction(SQLTransactionSyncCallback callback) native;

  void transaction(SQLTransactionSyncCallback callback) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DedicatedWorkerContextJS extends WorkerContextJS implements DedicatedWorkerContext native "*DedicatedWorkerContext" {

  EventListener get onmessage() native "return this.onmessage;";

  void set onmessage(EventListener value) native "this.onmessage = value;";

  void postMessage(Object message, [List messagePorts = null]) native;

  void webkitPostMessage(Object message, [List transferList = null]) native;
}

class DelayNodeJS extends AudioNodeJS implements DelayNode native "*DelayNode" {

  AudioParamJS get delayTime() native "return this.delayTime;";
}

class DeviceMotionEventJS extends EventJS implements DeviceMotionEvent native "*DeviceMotionEvent" {

  num get interval() native "return this.interval;";
}

class DeviceOrientationEventJS extends EventJS implements DeviceOrientationEvent native "*DeviceOrientationEvent" {

  num get alpha() native "return this.alpha;";

  num get beta() native "return this.beta;";

  num get gamma() native "return this.gamma;";

  void initDeviceOrientationEvent(String type, bool bubbles, bool cancelable, num alpha, num beta, num gamma) native;
}

class DirectoryEntryJS extends EntryJS implements DirectoryEntry native "*DirectoryEntry" {

  DirectoryReaderJS createReader() native;

  void getDirectory(String path, [Object flags = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void getFile(String path, [Object flags = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void removeRecursively(VoidCallback successCallback, [ErrorCallback errorCallback = null]) native;
}

class DirectoryEntrySyncJS extends EntrySyncJS implements DirectoryEntrySync native "*DirectoryEntrySync" {

  DirectoryReaderSyncJS createReader() native;

  DirectoryEntrySyncJS getDirectory(String path, Object flags) native;

  FileEntrySyncJS getFile(String path, Object flags) native;

  void removeRecursively() native;
}

class DirectoryReaderJS implements DirectoryReader native "*DirectoryReader" {

  void readEntries(EntriesCallback successCallback, [ErrorCallback errorCallback = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DirectoryReaderSyncJS implements DirectoryReaderSync native "*DirectoryReaderSync" {

  EntryArraySyncJS readEntries() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class DocumentJS extends NodeJS implements Document native "*Document" {

  String get URL() native "return this.URL;";

  HTMLCollectionJS get anchors() native "return this.anchors;";

  HTMLCollectionJS get applets() native "return this.applets;";

  HTMLElementJS get body() native "return this.body;";

  void set body(HTMLElementJS value) native "this.body = value;";

  String get characterSet() native "return this.characterSet;";

  String get charset() native "return this.charset;";

  void set charset(String value) native "this.charset = value;";

  String get compatMode() native "return this.compatMode;";

  String get cookie() native "return this.cookie;";

  void set cookie(String value) native "this.cookie = value;";

  String get defaultCharset() native "return this.defaultCharset;";

  DOMWindowJS get defaultView() native "return this.defaultView;";

  DocumentTypeJS get doctype() native "return this.doctype;";

  ElementJS get documentElement() native "return this.documentElement;";

  String get documentURI() native "return this.documentURI;";

  void set documentURI(String value) native "this.documentURI = value;";

  String get domain() native "return this.domain;";

  void set domain(String value) native "this.domain = value;";

  HTMLCollectionJS get forms() native "return this.forms;";

  HTMLHeadElementJS get head() native "return this.head;";

  HTMLCollectionJS get images() native "return this.images;";

  DOMImplementationJS get implementation() native "return this.implementation;";

  String get inputEncoding() native "return this.inputEncoding;";

  String get lastModified() native "return this.lastModified;";

  HTMLCollectionJS get links() native "return this.links;";

  LocationJS get location() native "return this.location;";

  void set location(LocationJS value) native "this.location = value;";

  String get preferredStylesheetSet() native "return this.preferredStylesheetSet;";

  String get readyState() native "return this.readyState;";

  String get referrer() native "return this.referrer;";

  String get selectedStylesheetSet() native "return this.selectedStylesheetSet;";

  void set selectedStylesheetSet(String value) native "this.selectedStylesheetSet = value;";

  StyleSheetListJS get styleSheets() native "return this.styleSheets;";

  String get title() native "return this.title;";

  void set title(String value) native "this.title = value;";

  ElementJS get webkitCurrentFullScreenElement() native "return this.webkitCurrentFullScreenElement;";

  bool get webkitFullScreenKeyboardInputAllowed() native "return this.webkitFullScreenKeyboardInputAllowed;";

  bool get webkitHidden() native "return this.webkitHidden;";

  bool get webkitIsFullScreen() native "return this.webkitIsFullScreen;";

  String get webkitVisibilityState() native "return this.webkitVisibilityState;";

  String get xmlEncoding() native "return this.xmlEncoding;";

  bool get xmlStandalone() native "return this.xmlStandalone;";

  void set xmlStandalone(bool value) native "this.xmlStandalone = value;";

  String get xmlVersion() native "return this.xmlVersion;";

  void set xmlVersion(String value) native "this.xmlVersion = value;";

  NodeJS adoptNode(NodeJS source) native;

  RangeJS caretRangeFromPoint(int x, int y) native;

  AttrJS createAttribute(String name) native;

  AttrJS createAttributeNS(String namespaceURI, String qualifiedName) native;

  CDATASectionJS createCDATASection(String data) native;

  CommentJS createComment(String data) native;

  DocumentFragmentJS createDocumentFragment() native;

  ElementJS createElement(String tagName) native;

  ElementJS createElementNS(String namespaceURI, String qualifiedName) native;

  EntityReferenceJS createEntityReference(String name) native;

  EventJS createEvent(String eventType) native;

  XPathExpressionJS createExpression(String expression, XPathNSResolverJS resolver) native;

  XPathNSResolverJS createNSResolver(NodeJS nodeResolver) native;

  NodeIteratorJS createNodeIterator(NodeJS root, int whatToShow, NodeFilterJS filter, bool expandEntityReferences) native;

  ProcessingInstructionJS createProcessingInstruction(String target, String data) native;

  RangeJS createRange() native;

  TextJS createTextNode(String data) native;

  TouchJS createTouch(DOMWindowJS window, EventTargetJS target, int identifier, int pageX, int pageY, int screenX, int screenY, int webkitRadiusX, int webkitRadiusY, num webkitRotationAngle, num webkitForce) native;

  TouchListJS createTouchList() native;

  TreeWalkerJS createTreeWalker(NodeJS root, int whatToShow, NodeFilterJS filter, bool expandEntityReferences) native;

  ElementJS elementFromPoint(int x, int y) native;

  XPathResultJS evaluate(String expression, NodeJS contextNode, XPathNSResolverJS resolver, int type, XPathResultJS inResult) native;

  bool execCommand(String command, bool userInterface, String value) native;

  Object getCSSCanvasContext(String contextId, String name, int width, int height) native;

  ElementJS getElementById(String elementId) native;

  NodeListJS getElementsByClassName(String tagname) native;

  NodeListJS getElementsByName(String elementName) native;

  NodeListJS getElementsByTagName(String tagname) native;

  NodeListJS getElementsByTagNameNS(String namespaceURI, String localName) native;

  CSSStyleDeclarationJS getOverrideStyle(ElementJS element, String pseudoElement) native;

  DOMSelectionJS getSelection() native;

  NodeJS importNode(NodeJS importedNode, [bool deep = null]) native;

  bool queryCommandEnabled(String command) native;

  bool queryCommandIndeterm(String command) native;

  bool queryCommandState(String command) native;

  bool queryCommandSupported(String command) native;

  String queryCommandValue(String command) native;

  ElementJS querySelector(String selectors) native;

  NodeListJS querySelectorAll(String selectors) native;

  void webkitCancelFullScreen() native;

  WebKitNamedFlowJS webkitGetFlowByName(String name) native;
}

class DocumentFragmentJS extends NodeJS implements DocumentFragment native "*DocumentFragment" {

  ElementJS querySelector(String selectors) native;

  NodeListJS querySelectorAll(String selectors) native;
}

class DocumentTypeJS extends NodeJS implements DocumentType native "*DocumentType" {

  NamedNodeMapJS get entities() native "return this.entities;";

  String get internalSubset() native "return this.internalSubset;";

  String get name() native "return this.name;";

  NamedNodeMapJS get notations() native "return this.notations;";

  String get publicId() native "return this.publicId;";

  String get systemId() native "return this.systemId;";
}

class DynamicsCompressorNodeJS extends AudioNodeJS implements DynamicsCompressorNode native "*DynamicsCompressorNode" {
}

class ElementJS extends NodeJS implements Element native "*Element" {

  static final int ALLOW_KEYBOARD_INPUT = 1;

  int get childElementCount() native "return this.childElementCount;";

  int get clientHeight() native "return this.clientHeight;";

  int get clientLeft() native "return this.clientLeft;";

  int get clientTop() native "return this.clientTop;";

  int get clientWidth() native "return this.clientWidth;";

  ElementJS get firstElementChild() native "return this.firstElementChild;";

  ElementJS get lastElementChild() native "return this.lastElementChild;";

  ElementJS get nextElementSibling() native "return this.nextElementSibling;";

  int get offsetHeight() native "return this.offsetHeight;";

  int get offsetLeft() native "return this.offsetLeft;";

  ElementJS get offsetParent() native "return this.offsetParent;";

  int get offsetTop() native "return this.offsetTop;";

  int get offsetWidth() native "return this.offsetWidth;";

  ElementJS get previousElementSibling() native "return this.previousElementSibling;";

  int get scrollHeight() native "return this.scrollHeight;";

  int get scrollLeft() native "return this.scrollLeft;";

  void set scrollLeft(int value) native "this.scrollLeft = value;";

  int get scrollTop() native "return this.scrollTop;";

  void set scrollTop(int value) native "this.scrollTop = value;";

  int get scrollWidth() native "return this.scrollWidth;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  String get tagName() native "return this.tagName;";

  void blur() native;

  void focus() native;

  String getAttribute(String name) native;

  String getAttributeNS(String namespaceURI, String localName) native;

  AttrJS getAttributeNode(String name) native;

  AttrJS getAttributeNodeNS(String namespaceURI, String localName) native;

  ClientRectJS getBoundingClientRect() native;

  ClientRectListJS getClientRects() native;

  NodeListJS getElementsByClassName(String name) native;

  NodeListJS getElementsByTagName(String name) native;

  NodeListJS getElementsByTagNameNS(String namespaceURI, String localName) native;

  bool hasAttribute(String name) native;

  bool hasAttributeNS(String namespaceURI, String localName) native;

  ElementJS querySelector(String selectors) native;

  NodeListJS querySelectorAll(String selectors) native;

  void removeAttribute(String name) native;

  void removeAttributeNS(String namespaceURI, String localName) native;

  AttrJS removeAttributeNode(AttrJS oldAttr) native;

  void scrollByLines(int lines) native;

  void scrollByPages(int pages) native;

  void scrollIntoView([bool alignWithTop = null]) native;

  void scrollIntoViewIfNeeded([bool centerIfNeeded = null]) native;

  void setAttribute(String name, String value) native;

  void setAttributeNS(String namespaceURI, String qualifiedName, String value) native;

  AttrJS setAttributeNode(AttrJS newAttr) native;

  AttrJS setAttributeNodeNS(AttrJS newAttr) native;

  bool webkitMatchesSelector(String selectors) native;

  void webkitRequestFullScreen(int flags) native;
}

class ElementTimeControlJS implements ElementTimeControl native "*ElementTimeControl" {

  void beginElement() native;

  void beginElementAt(num offset) native;

  void endElement() native;

  void endElementAt(num offset) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ElementTraversalJS implements ElementTraversal native "*ElementTraversal" {

  int get childElementCount() native "return this.childElementCount;";

  ElementJS get firstElementChild() native "return this.firstElementChild;";

  ElementJS get lastElementChild() native "return this.lastElementChild;";

  ElementJS get nextElementSibling() native "return this.nextElementSibling;";

  ElementJS get previousElementSibling() native "return this.previousElementSibling;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EntityJS extends NodeJS implements Entity native "*Entity" {

  String get notationName() native "return this.notationName;";

  String get publicId() native "return this.publicId;";

  String get systemId() native "return this.systemId;";
}

class EntityReferenceJS extends NodeJS implements EntityReference native "*EntityReference" {
}

class EntryJS implements Entry native "*Entry" {

  DOMFileSystemJS get filesystem() native "return this.filesystem;";

  String get fullPath() native "return this.fullPath;";

  bool get isDirectory() native "return this.isDirectory;";

  bool get isFile() native "return this.isFile;";

  String get name() native "return this.name;";

  void copyTo(DirectoryEntryJS parent, [String name = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void getMetadata(MetadataCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void getParent([EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void moveTo(DirectoryEntryJS parent, [String name = null, EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  void remove(VoidCallback successCallback, [ErrorCallback errorCallback = null]) native;

  String toURL() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EntryArrayJS implements EntryArray native "*EntryArray" {

  int get length() native "return this.length;";

  EntryJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EntryArraySyncJS implements EntryArraySync native "*EntryArraySync" {

  int get length() native "return this.length;";

  EntrySyncJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EntrySyncJS implements EntrySync native "*EntrySync" {

  DOMFileSystemSyncJS get filesystem() native "return this.filesystem;";

  String get fullPath() native "return this.fullPath;";

  bool get isDirectory() native "return this.isDirectory;";

  bool get isFile() native "return this.isFile;";

  String get name() native "return this.name;";

  EntrySyncJS copyTo(DirectoryEntrySyncJS parent, String name) native;

  MetadataJS getMetadata() native;

  DirectoryEntrySyncJS getParent() native;

  EntrySyncJS moveTo(DirectoryEntrySyncJS parent, String name) native;

  void remove() native;

  String toURL() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ErrorEventJS extends EventJS implements ErrorEvent native "*ErrorEvent" {

  String get filename() native "return this.filename;";

  int get lineno() native "return this.lineno;";

  String get message() native "return this.message;";
}

class EventJS implements Event native "*Event" {

  static final int AT_TARGET = 2;

  static final int BLUR = 8192;

  static final int BUBBLING_PHASE = 3;

  static final int CAPTURING_PHASE = 1;

  static final int CHANGE = 32768;

  static final int CLICK = 64;

  static final int DBLCLICK = 128;

  static final int DRAGDROP = 2048;

  static final int FOCUS = 4096;

  static final int KEYDOWN = 256;

  static final int KEYPRESS = 1024;

  static final int KEYUP = 512;

  static final int MOUSEDOWN = 1;

  static final int MOUSEDRAG = 32;

  static final int MOUSEMOVE = 16;

  static final int MOUSEOUT = 8;

  static final int MOUSEOVER = 4;

  static final int MOUSEUP = 2;

  static final int SELECT = 16384;

  bool get bubbles() native "return this.bubbles;";

  bool get cancelBubble() native "return this.cancelBubble;";

  void set cancelBubble(bool value) native "this.cancelBubble = value;";

  bool get cancelable() native "return this.cancelable;";

  ClipboardJS get clipboardData() native "return this.clipboardData;";

  EventTargetJS get currentTarget() native "return this.currentTarget;";

  bool get defaultPrevented() native "return this.defaultPrevented;";

  int get eventPhase() native "return this.eventPhase;";

  bool get returnValue() native "return this.returnValue;";

  void set returnValue(bool value) native "this.returnValue = value;";

  EventTargetJS get srcElement() native "return this.srcElement;";

  EventTargetJS get target() native "return this.target;";

  int get timeStamp() native "return this.timeStamp;";

  String get type() native "return this.type;";

  void initEvent(String eventTypeArg, bool canBubbleArg, bool cancelableArg) native;

  void preventDefault() native;

  void stopImmediatePropagation() native;

  void stopPropagation() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EventExceptionJS implements EventException native "*EventException" {

  static final int DISPATCH_REQUEST_ERR = 1;

  static final int UNSPECIFIED_EVENT_TYPE_ERR = 0;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EventSourceJS implements EventSource native "*EventSource" {

  static final int CLOSED = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  String get URL() native "return this.URL;";

  int get readyState() native "return this.readyState;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void close() native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class EventTargetJS implements EventTarget native "*EventTarget" {

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS event) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileJS extends BlobJS implements File native "*File" {

  String get fileName() native "return this.fileName;";

  int get fileSize() native "return this.fileSize;";

  Date get lastModifiedDate() native "return this.lastModifiedDate;";

  String get name() native "return this.name;";

  String get webkitRelativePath() native "return this.webkitRelativePath;";
}

class FileEntryJS extends EntryJS implements FileEntry native "*FileEntry" {

  void createWriter(FileWriterCallback successCallback, [ErrorCallback errorCallback = null]) native;

  void file(FileCallback successCallback, [ErrorCallback errorCallback = null]) native;
}

class FileEntrySyncJS extends EntrySyncJS implements FileEntrySync native "*FileEntrySync" {

  FileWriterSyncJS createWriter() native;

  FileJS file() native;
}

class FileErrorJS implements FileError native "*FileError" {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  int get code() native "return this.code;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileExceptionJS implements FileException native "*FileException" {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileListJS implements FileList native "*FileList" {

  int get length() native "return this.length;";

  FileJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileReaderJS implements FileReader native "*FileReader" {
  FileReader() native;


  static final int DONE = 2;

  static final int EMPTY = 0;

  static final int LOADING = 1;

  FileErrorJS get error() native "return this.error;";

  EventListener get onabort() native "return this.onabort;";

  void set onabort(EventListener value) native "this.onabort = value;";

  EventListener get onerror() native "return this.onerror;";

  void set onerror(EventListener value) native "this.onerror = value;";

  EventListener get onload() native "return this.onload;";

  void set onload(EventListener value) native "this.onload = value;";

  EventListener get onloadend() native "return this.onloadend;";

  void set onloadend(EventListener value) native "this.onloadend = value;";

  EventListener get onloadstart() native "return this.onloadstart;";

  void set onloadstart(EventListener value) native "this.onloadstart = value;";

  EventListener get onprogress() native "return this.onprogress;";

  void set onprogress(EventListener value) native "this.onprogress = value;";

  int get readyState() native "return this.readyState;";

  Object get result() native "return this.result;";

  void abort() native;

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void readAsArrayBuffer(BlobJS blob) native;

  void readAsBinaryString(BlobJS blob) native;

  void readAsDataURL(BlobJS blob) native;

  void readAsText(BlobJS blob, [String encoding = null]) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileReaderSyncJS implements FileReaderSync native "*FileReaderSync" {

  ArrayBufferJS readAsArrayBuffer(BlobJS blob) native;

  String readAsBinaryString(BlobJS blob) native;

  String readAsDataURL(BlobJS blob) native;

  String readAsText(BlobJS blob, [String encoding = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileWriterJS implements FileWriter native "*FileWriter" {

  static final int DONE = 2;

  static final int INIT = 0;

  static final int WRITING = 1;

  FileErrorJS get error() native "return this.error;";

  int get length() native "return this.length;";

  EventListener get onabort() native "return this.onabort;";

  void set onabort(EventListener value) native "this.onabort = value;";

  EventListener get onerror() native "return this.onerror;";

  void set onerror(EventListener value) native "this.onerror = value;";

  EventListener get onprogress() native "return this.onprogress;";

  void set onprogress(EventListener value) native "this.onprogress = value;";

  EventListener get onwrite() native "return this.onwrite;";

  void set onwrite(EventListener value) native "this.onwrite = value;";

  EventListener get onwriteend() native "return this.onwriteend;";

  void set onwriteend(EventListener value) native "this.onwriteend = value;";

  EventListener get onwritestart() native "return this.onwritestart;";

  void set onwritestart(EventListener value) native "this.onwritestart = value;";

  int get position() native "return this.position;";

  int get readyState() native "return this.readyState;";

  void abort() native;

  void seek(int position) native;

  void truncate(int size) native;

  void write(BlobJS data) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class FileWriterSyncJS implements FileWriterSync native "*FileWriterSync" {

  int get length() native "return this.length;";

  int get position() native "return this.position;";

  void seek(int position) native;

  void truncate(int size) native;

  void write(BlobJS data) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class Float32ArrayJS extends ArrayBufferViewJS implements Float32Array, List<num> native "*Float32Array" {

  factory Float32Array(int length) =>  _construct(length);

  factory Float32Array.fromList(List<num> list) => _construct(list);

  factory Float32Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Float32Array(arg);';

  static final int BYTES_PER_ELEMENT = 4;

  int get length() native "return this.length;";

  num operator[](int index) native;

  void operator[]=(int index, num value) native;

  void setElements(Object array, [int offset = null]) native;

  Float32ArrayJS subarray(int start, [int end = null]) native;
}

class Float64ArrayJS extends ArrayBufferViewJS implements Float64Array, List<num> native "*Float64Array" {

  factory Float64Array(int length) =>  _construct(length);

  factory Float64Array.fromList(List<num> list) => _construct(list);

  factory Float64Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Float64Array(arg);';

  static final int BYTES_PER_ELEMENT = 8;

  int get length() native "return this.length;";

  num operator[](int index) native;

  void operator[]=(int index, num value) native;

  void setElements(Object array, [int offset = null]) native;

  Float64ArrayJS subarray(int start, [int end = null]) native;
}

class GeolocationJS implements Geolocation native "*Geolocation" {

  void clearWatch(int watchId) native;

  void getCurrentPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback = null]) native;

  int watchPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class GeopositionJS implements Geoposition native "*Geoposition" {

  CoordinatesJS get coords() native "return this.coords;";

  int get timestamp() native "return this.timestamp;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class HTMLAllCollectionJS implements HTMLAllCollection native "*HTMLAllCollection" {

  int get length() native "return this.length;";

  NodeJS item(int index) native;

  NodeJS namedItem(String name) native;

  NodeListJS tags(String name) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class HTMLAnchorElementJS extends HTMLElementJS implements HTMLAnchorElement native "*HTMLAnchorElement" {

  String get charset() native "return this.charset;";

  void set charset(String value) native "this.charset = value;";

  String get coords() native "return this.coords;";

  void set coords(String value) native "this.coords = value;";

  String get download() native "return this.download;";

  void set download(String value) native "this.download = value;";

  String get hash() native "return this.hash;";

  void set hash(String value) native "this.hash = value;";

  String get host() native "return this.host;";

  void set host(String value) native "this.host = value;";

  String get hostname() native "return this.hostname;";

  void set hostname(String value) native "this.hostname = value;";

  String get href() native "return this.href;";

  void set href(String value) native "this.href = value;";

  String get hreflang() native "return this.hreflang;";

  void set hreflang(String value) native "this.hreflang = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get origin() native "return this.origin;";

  String get pathname() native "return this.pathname;";

  void set pathname(String value) native "this.pathname = value;";

  String get ping() native "return this.ping;";

  void set ping(String value) native "this.ping = value;";

  String get port() native "return this.port;";

  void set port(String value) native "this.port = value;";

  String get protocol() native "return this.protocol;";

  void set protocol(String value) native "this.protocol = value;";

  String get rel() native "return this.rel;";

  void set rel(String value) native "this.rel = value;";

  String get rev() native "return this.rev;";

  void set rev(String value) native "this.rev = value;";

  String get search() native "return this.search;";

  void set search(String value) native "this.search = value;";

  String get shape() native "return this.shape;";

  void set shape(String value) native "this.shape = value;";

  String get target() native "return this.target;";

  void set target(String value) native "this.target = value;";

  String get text() native "return this.text;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  String toString() native;
}

class HTMLAppletElementJS extends HTMLElementJS implements HTMLAppletElement native "*HTMLAppletElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get alt() native "return this.alt;";

  void set alt(String value) native "this.alt = value;";

  String get archive() native "return this.archive;";

  void set archive(String value) native "this.archive = value;";

  String get code() native "return this.code;";

  void set code(String value) native "this.code = value;";

  String get codeBase() native "return this.codeBase;";

  void set codeBase(String value) native "this.codeBase = value;";

  String get height() native "return this.height;";

  void set height(String value) native "this.height = value;";

  String get hspace() native "return this.hspace;";

  void set hspace(String value) native "this.hspace = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get object() native "return this.object;";

  void set object(String value) native "this.object = value;";

  String get vspace() native "return this.vspace;";

  void set vspace(String value) native "this.vspace = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";
}

class HTMLAreaElementJS extends HTMLElementJS implements HTMLAreaElement native "*HTMLAreaElement" {

  String get alt() native "return this.alt;";

  void set alt(String value) native "this.alt = value;";

  String get coords() native "return this.coords;";

  void set coords(String value) native "this.coords = value;";

  String get hash() native "return this.hash;";

  String get host() native "return this.host;";

  String get hostname() native "return this.hostname;";

  String get href() native "return this.href;";

  void set href(String value) native "this.href = value;";

  bool get noHref() native "return this.noHref;";

  void set noHref(bool value) native "this.noHref = value;";

  String get pathname() native "return this.pathname;";

  String get ping() native "return this.ping;";

  void set ping(String value) native "this.ping = value;";

  String get port() native "return this.port;";

  String get protocol() native "return this.protocol;";

  String get search() native "return this.search;";

  String get shape() native "return this.shape;";

  void set shape(String value) native "this.shape = value;";

  String get target() native "return this.target;";

  void set target(String value) native "this.target = value;";
}

class HTMLAudioElementJS extends HTMLMediaElementJS implements HTMLAudioElement native "*HTMLAudioElement" {
}

class HTMLBRElementJS extends HTMLElementJS implements HTMLBRElement native "*HTMLBRElement" {

  String get clear() native "return this.clear;";

  void set clear(String value) native "this.clear = value;";
}

class HTMLBaseElementJS extends HTMLElementJS implements HTMLBaseElement native "*HTMLBaseElement" {

  String get href() native "return this.href;";

  void set href(String value) native "this.href = value;";

  String get target() native "return this.target;";

  void set target(String value) native "this.target = value;";
}

class HTMLBaseFontElementJS extends HTMLElementJS implements HTMLBaseFontElement native "*HTMLBaseFontElement" {

  String get color() native "return this.color;";

  void set color(String value) native "this.color = value;";

  String get face() native "return this.face;";

  void set face(String value) native "this.face = value;";

  int get size() native "return this.size;";

  void set size(int value) native "this.size = value;";
}

class HTMLBodyElementJS extends HTMLElementJS implements HTMLBodyElement native "*HTMLBodyElement" {

  String get aLink() native "return this.aLink;";

  void set aLink(String value) native "this.aLink = value;";

  String get background() native "return this.background;";

  void set background(String value) native "this.background = value;";

  String get bgColor() native "return this.bgColor;";

  void set bgColor(String value) native "this.bgColor = value;";

  String get link() native "return this.link;";

  void set link(String value) native "this.link = value;";

  String get text() native "return this.text;";

  void set text(String value) native "this.text = value;";

  String get vLink() native "return this.vLink;";

  void set vLink(String value) native "this.vLink = value;";
}

class HTMLButtonElementJS extends HTMLElementJS implements HTMLButtonElement native "*HTMLButtonElement" {

  bool get autofocus() native "return this.autofocus;";

  void set autofocus(bool value) native "this.autofocus = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  HTMLFormElementJS get form() native "return this.form;";

  String get formAction() native "return this.formAction;";

  void set formAction(String value) native "this.formAction = value;";

  String get formEnctype() native "return this.formEnctype;";

  void set formEnctype(String value) native "this.formEnctype = value;";

  String get formMethod() native "return this.formMethod;";

  void set formMethod(String value) native "this.formMethod = value;";

  bool get formNoValidate() native "return this.formNoValidate;";

  void set formNoValidate(bool value) native "this.formNoValidate = value;";

  String get formTarget() native "return this.formTarget;";

  void set formTarget(String value) native "this.formTarget = value;";

  NodeListJS get labels() native "return this.labels;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get type() native "return this.type;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";

  bool get willValidate() native "return this.willValidate;";

  bool checkValidity() native;

  void click() native;

  void setCustomValidity(String error) native;
}

class HTMLCanvasElementJS extends HTMLElementJS implements HTMLCanvasElement native "*HTMLCanvasElement" {

  int get height() native "return this.height;";

  void set height(int value) native "this.height = value;";

  int get width() native "return this.width;";

  void set width(int value) native "this.width = value;";

  Object getContext(String contextId) native;

  String toDataURL(String type) native;
}

class HTMLCollectionJS implements HTMLCollection native "*HTMLCollection" {

  int get length() native "return this.length;";

  NodeJS operator[](int index) native;

  void operator[]=(int index, NodeJS value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }

  NodeJS item(int index) native;

  NodeJS namedItem(String name) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class HTMLDListElementJS extends HTMLElementJS implements HTMLDListElement native "*HTMLDListElement" {

  bool get compact() native "return this.compact;";

  void set compact(bool value) native "this.compact = value;";
}

class HTMLDataListElementJS extends HTMLElementJS implements HTMLDataListElement native "*HTMLDataListElement" {

  HTMLCollectionJS get options() native "return this.options;";
}

class HTMLDetailsElementJS extends HTMLElementJS implements HTMLDetailsElement native "*HTMLDetailsElement" {

  bool get open() native "return this.open;";

  void set open(bool value) native "this.open = value;";
}

class HTMLDirectoryElementJS extends HTMLElementJS implements HTMLDirectoryElement native "*HTMLDirectoryElement" {

  bool get compact() native "return this.compact;";

  void set compact(bool value) native "this.compact = value;";
}

class HTMLDivElementJS extends HTMLElementJS implements HTMLDivElement native "*HTMLDivElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";
}

class HTMLDocumentJS extends DocumentJS implements HTMLDocument native "*HTMLDocument" {

  ElementJS get activeElement() native "return this.activeElement;";

  String get alinkColor() native "return this.alinkColor;";

  void set alinkColor(String value) native "this.alinkColor = value;";

  HTMLAllCollectionJS get all() native "return this.all;";

  void set all(HTMLAllCollectionJS value) native "this.all = value;";

  String get bgColor() native "return this.bgColor;";

  void set bgColor(String value) native "this.bgColor = value;";

  String get compatMode() native "return this.compatMode;";

  String get designMode() native "return this.designMode;";

  void set designMode(String value) native "this.designMode = value;";

  String get dir() native "return this.dir;";

  void set dir(String value) native "this.dir = value;";

  HTMLCollectionJS get embeds() native "return this.embeds;";

  String get fgColor() native "return this.fgColor;";

  void set fgColor(String value) native "this.fgColor = value;";

  String get linkColor() native "return this.linkColor;";

  void set linkColor(String value) native "this.linkColor = value;";

  HTMLCollectionJS get plugins() native "return this.plugins;";

  HTMLCollectionJS get scripts() native "return this.scripts;";

  String get vlinkColor() native "return this.vlinkColor;";

  void set vlinkColor(String value) native "this.vlinkColor = value;";

  void captureEvents() native;

  void clear() native;

  void close() native;

  bool hasFocus() native;

  void open() native;

  void releaseEvents() native;

  void write(String text) native;

  void writeln(String text) native;
}

class HTMLElementJS extends ElementJS implements HTMLElement native "*HTMLElement" {

  String get accessKey() native "return this.accessKey;";

  void set accessKey(String value) native "this.accessKey = value;";

  HTMLCollectionJS get children() native "return this.children;";

  DOMTokenListJS get classList() native "return this.classList;";

  String get className() native "return this.className;";

  void set className(String value) native "this.className = value;";

  String get contentEditable() native "return this.contentEditable;";

  void set contentEditable(String value) native "this.contentEditable = value;";

  String get dir() native "return this.dir;";

  void set dir(String value) native "this.dir = value;";

  bool get draggable() native "return this.draggable;";

  void set draggable(bool value) native "this.draggable = value;";

  bool get hidden() native "return this.hidden;";

  void set hidden(bool value) native "this.hidden = value;";

  String get id() native "return this.id;";

  void set id(String value) native "this.id = value;";

  String get innerHTML() native "return this.innerHTML;";

  void set innerHTML(String value) native "this.innerHTML = value;";

  String get innerText() native "return this.innerText;";

  void set innerText(String value) native "this.innerText = value;";

  bool get isContentEditable() native "return this.isContentEditable;";

  String get itemId() native "return this.itemId;";

  void set itemId(String value) native "this.itemId = value;";

  DOMSettableTokenListJS get itemProp() native "return this.itemProp;";

  DOMSettableTokenListJS get itemRef() native "return this.itemRef;";

  bool get itemScope() native "return this.itemScope;";

  void set itemScope(bool value) native "this.itemScope = value;";

  DOMSettableTokenListJS get itemType() native "return this.itemType;";

  Object get itemValue() native "return this.itemValue;";

  void set itemValue(Object value) native "this.itemValue = value;";

  String get lang() native "return this.lang;";

  void set lang(String value) native "this.lang = value;";

  String get outerHTML() native "return this.outerHTML;";

  void set outerHTML(String value) native "this.outerHTML = value;";

  String get outerText() native "return this.outerText;";

  void set outerText(String value) native "this.outerText = value;";

  bool get spellcheck() native "return this.spellcheck;";

  void set spellcheck(bool value) native "this.spellcheck = value;";

  int get tabIndex() native "return this.tabIndex;";

  void set tabIndex(int value) native "this.tabIndex = value;";

  String get title() native "return this.title;";

  void set title(String value) native "this.title = value;";

  String get webkitdropzone() native "return this.webkitdropzone;";

  void set webkitdropzone(String value) native "this.webkitdropzone = value;";

  ElementJS insertAdjacentElement(String where, ElementJS element) native;

  void insertAdjacentHTML(String where, String html) native;

  void insertAdjacentText(String where, String text) native;
}

class HTMLEmbedElementJS extends HTMLElementJS implements HTMLEmbedElement native "*HTMLEmbedElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get height() native "return this.height;";

  void set height(String value) native "this.height = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";

  SVGDocumentJS getSVGDocument() native;
}

class HTMLFieldSetElementJS extends HTMLElementJS implements HTMLFieldSetElement native "*HTMLFieldSetElement" {

  HTMLFormElementJS get form() native "return this.form;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  bool get willValidate() native "return this.willValidate;";

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class HTMLFontElementJS extends HTMLElementJS implements HTMLFontElement native "*HTMLFontElement" {

  String get color() native "return this.color;";

  void set color(String value) native "this.color = value;";

  String get face() native "return this.face;";

  void set face(String value) native "this.face = value;";

  String get size() native "return this.size;";

  void set size(String value) native "this.size = value;";
}

class HTMLFormElementJS extends HTMLElementJS implements HTMLFormElement native "*HTMLFormElement" {

  String get acceptCharset() native "return this.acceptCharset;";

  void set acceptCharset(String value) native "this.acceptCharset = value;";

  String get action() native "return this.action;";

  void set action(String value) native "this.action = value;";

  String get autocomplete() native "return this.autocomplete;";

  void set autocomplete(String value) native "this.autocomplete = value;";

  HTMLCollectionJS get elements() native "return this.elements;";

  String get encoding() native "return this.encoding;";

  void set encoding(String value) native "this.encoding = value;";

  String get enctype() native "return this.enctype;";

  void set enctype(String value) native "this.enctype = value;";

  int get length() native "return this.length;";

  String get method() native "return this.method;";

  void set method(String value) native "this.method = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  bool get noValidate() native "return this.noValidate;";

  void set noValidate(bool value) native "this.noValidate = value;";

  String get target() native "return this.target;";

  void set target(String value) native "this.target = value;";

  bool checkValidity() native;

  void reset() native;

  void submit() native;
}

class HTMLFrameElementJS extends HTMLElementJS implements HTMLFrameElement native "*HTMLFrameElement" {

  DocumentJS get contentDocument() native "return this.contentDocument;";

  DOMWindowJS get contentWindow() native "return this.contentWindow;";

  String get frameBorder() native "return this.frameBorder;";

  void set frameBorder(String value) native "this.frameBorder = value;";

  int get height() native "return this.height;";

  String get location() native "return this.location;";

  void set location(String value) native "this.location = value;";

  String get longDesc() native "return this.longDesc;";

  void set longDesc(String value) native "this.longDesc = value;";

  String get marginHeight() native "return this.marginHeight;";

  void set marginHeight(String value) native "this.marginHeight = value;";

  String get marginWidth() native "return this.marginWidth;";

  void set marginWidth(String value) native "this.marginWidth = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  bool get noResize() native "return this.noResize;";

  void set noResize(bool value) native "this.noResize = value;";

  String get scrolling() native "return this.scrolling;";

  void set scrolling(String value) native "this.scrolling = value;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  int get width() native "return this.width;";

  SVGDocumentJS getSVGDocument() native;
}

class HTMLFrameSetElementJS extends HTMLElementJS implements HTMLFrameSetElement native "*HTMLFrameSetElement" {

  String get cols() native "return this.cols;";

  void set cols(String value) native "this.cols = value;";

  String get rows() native "return this.rows;";

  void set rows(String value) native "this.rows = value;";
}

class HTMLHRElementJS extends HTMLElementJS implements HTMLHRElement native "*HTMLHRElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  bool get noShade() native "return this.noShade;";

  void set noShade(bool value) native "this.noShade = value;";

  String get size() native "return this.size;";

  void set size(String value) native "this.size = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";
}

class HTMLHeadElementJS extends HTMLElementJS implements HTMLHeadElement native "*HTMLHeadElement" {

  String get profile() native "return this.profile;";

  void set profile(String value) native "this.profile = value;";
}

class HTMLHeadingElementJS extends HTMLElementJS implements HTMLHeadingElement native "*HTMLHeadingElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";
}

class HTMLHtmlElementJS extends HTMLElementJS implements HTMLHtmlElement native "*HTMLHtmlElement" {

  String get manifest() native "return this.manifest;";

  void set manifest(String value) native "this.manifest = value;";

  String get version() native "return this.version;";

  void set version(String value) native "this.version = value;";
}

class HTMLIFrameElementJS extends HTMLElementJS implements HTMLIFrameElement native "*HTMLIFrameElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  DocumentJS get contentDocument() native "return this.contentDocument;";

  DOMWindowJS get contentWindow() native "return this.contentWindow;";

  String get frameBorder() native "return this.frameBorder;";

  void set frameBorder(String value) native "this.frameBorder = value;";

  String get height() native "return this.height;";

  void set height(String value) native "this.height = value;";

  String get longDesc() native "return this.longDesc;";

  void set longDesc(String value) native "this.longDesc = value;";

  String get marginHeight() native "return this.marginHeight;";

  void set marginHeight(String value) native "this.marginHeight = value;";

  String get marginWidth() native "return this.marginWidth;";

  void set marginWidth(String value) native "this.marginWidth = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get sandbox() native "return this.sandbox;";

  void set sandbox(String value) native "this.sandbox = value;";

  String get scrolling() native "return this.scrolling;";

  void set scrolling(String value) native "this.scrolling = value;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";

  SVGDocumentJS getSVGDocument() native;
}

class HTMLImageElementJS extends HTMLElementJS implements HTMLImageElement native "*HTMLImageElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get alt() native "return this.alt;";

  void set alt(String value) native "this.alt = value;";

  String get border() native "return this.border;";

  void set border(String value) native "this.border = value;";

  bool get complete() native "return this.complete;";

  String get crossOrigin() native "return this.crossOrigin;";

  void set crossOrigin(String value) native "this.crossOrigin = value;";

  int get height() native "return this.height;";

  void set height(int value) native "this.height = value;";

  int get hspace() native "return this.hspace;";

  void set hspace(int value) native "this.hspace = value;";

  bool get isMap() native "return this.isMap;";

  void set isMap(bool value) native "this.isMap = value;";

  String get longDesc() native "return this.longDesc;";

  void set longDesc(String value) native "this.longDesc = value;";

  String get lowsrc() native "return this.lowsrc;";

  void set lowsrc(String value) native "this.lowsrc = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  int get naturalHeight() native "return this.naturalHeight;";

  int get naturalWidth() native "return this.naturalWidth;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get useMap() native "return this.useMap;";

  void set useMap(String value) native "this.useMap = value;";

  int get vspace() native "return this.vspace;";

  void set vspace(int value) native "this.vspace = value;";

  int get width() native "return this.width;";

  void set width(int value) native "this.width = value;";

  int get x() native "return this.x;";

  int get y() native "return this.y;";
}

class HTMLInputElementJS extends HTMLElementJS implements HTMLInputElement native "*HTMLInputElement" {

  String get accept() native "return this.accept;";

  void set accept(String value) native "this.accept = value;";

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get alt() native "return this.alt;";

  void set alt(String value) native "this.alt = value;";

  String get autocomplete() native "return this.autocomplete;";

  void set autocomplete(String value) native "this.autocomplete = value;";

  bool get autofocus() native "return this.autofocus;";

  void set autofocus(bool value) native "this.autofocus = value;";

  bool get checked() native "return this.checked;";

  void set checked(bool value) native "this.checked = value;";

  bool get defaultChecked() native "return this.defaultChecked;";

  void set defaultChecked(bool value) native "this.defaultChecked = value;";

  String get defaultValue() native "return this.defaultValue;";

  void set defaultValue(String value) native "this.defaultValue = value;";

  String get dirName() native "return this.dirName;";

  void set dirName(String value) native "this.dirName = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  FileListJS get files() native "return this.files;";

  HTMLFormElementJS get form() native "return this.form;";

  String get formAction() native "return this.formAction;";

  void set formAction(String value) native "this.formAction = value;";

  String get formEnctype() native "return this.formEnctype;";

  void set formEnctype(String value) native "this.formEnctype = value;";

  String get formMethod() native "return this.formMethod;";

  void set formMethod(String value) native "this.formMethod = value;";

  bool get formNoValidate() native "return this.formNoValidate;";

  void set formNoValidate(bool value) native "this.formNoValidate = value;";

  String get formTarget() native "return this.formTarget;";

  void set formTarget(String value) native "this.formTarget = value;";

  bool get incremental() native "return this.incremental;";

  void set incremental(bool value) native "this.incremental = value;";

  bool get indeterminate() native "return this.indeterminate;";

  void set indeterminate(bool value) native "this.indeterminate = value;";

  NodeListJS get labels() native "return this.labels;";

  HTMLElementJS get list() native "return this.list;";

  String get max() native "return this.max;";

  void set max(String value) native "this.max = value;";

  int get maxLength() native "return this.maxLength;";

  void set maxLength(int value) native "this.maxLength = value;";

  String get min() native "return this.min;";

  void set min(String value) native "this.min = value;";

  bool get multiple() native "return this.multiple;";

  void set multiple(bool value) native "this.multiple = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get pattern() native "return this.pattern;";

  void set pattern(String value) native "this.pattern = value;";

  String get placeholder() native "return this.placeholder;";

  void set placeholder(String value) native "this.placeholder = value;";

  bool get readOnly() native "return this.readOnly;";

  void set readOnly(bool value) native "this.readOnly = value;";

  bool get required() native "return this.required;";

  void set required(bool value) native "this.required = value;";

  HTMLOptionElementJS get selectedOption() native "return this.selectedOption;";

  String get selectionDirection() native "return this.selectionDirection;";

  void set selectionDirection(String value) native "this.selectionDirection = value;";

  int get selectionEnd() native "return this.selectionEnd;";

  void set selectionEnd(int value) native "this.selectionEnd = value;";

  int get selectionStart() native "return this.selectionStart;";

  void set selectionStart(int value) native "this.selectionStart = value;";

  int get size() native "return this.size;";

  void set size(int value) native "this.size = value;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get step() native "return this.step;";

  void set step(String value) native "this.step = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  String get useMap() native "return this.useMap;";

  void set useMap(String value) native "this.useMap = value;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";

  Date get valueAsDate() native "return this.valueAsDate;";

  void set valueAsDate(Date value) native "this.valueAsDate = value;";

  num get valueAsNumber() native "return this.valueAsNumber;";

  void set valueAsNumber(num value) native "this.valueAsNumber = value;";

  bool get webkitGrammar() native "return this.webkitGrammar;";

  void set webkitGrammar(bool value) native "this.webkitGrammar = value;";

  bool get webkitSpeech() native "return this.webkitSpeech;";

  void set webkitSpeech(bool value) native "this.webkitSpeech = value;";

  bool get webkitdirectory() native "return this.webkitdirectory;";

  void set webkitdirectory(bool value) native "this.webkitdirectory = value;";

  bool get willValidate() native "return this.willValidate;";

  bool checkValidity() native;

  void click() native;

  void select() native;

  void setCustomValidity(String error) native;

  void setSelectionRange(int start, int end, [String direction = null]) native;

  void stepDown([int n = null]) native;

  void stepUp([int n = null]) native;
}

class HTMLIsIndexElementJS extends HTMLInputElementJS implements HTMLIsIndexElement native "*HTMLIsIndexElement" {

  HTMLFormElementJS get form() native "return this.form;";

  String get prompt() native "return this.prompt;";

  void set prompt(String value) native "this.prompt = value;";
}

class HTMLKeygenElementJS extends HTMLElementJS implements HTMLKeygenElement native "*HTMLKeygenElement" {

  bool get autofocus() native "return this.autofocus;";

  void set autofocus(bool value) native "this.autofocus = value;";

  String get challenge() native "return this.challenge;";

  void set challenge(String value) native "this.challenge = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  HTMLFormElementJS get form() native "return this.form;";

  String get keytype() native "return this.keytype;";

  void set keytype(String value) native "this.keytype = value;";

  NodeListJS get labels() native "return this.labels;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get type() native "return this.type;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  bool get willValidate() native "return this.willValidate;";

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class HTMLLIElementJS extends HTMLElementJS implements HTMLLIElement native "*HTMLLIElement" {

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  int get value() native "return this.value;";

  void set value(int value) native "this.value = value;";
}

class HTMLLabelElementJS extends HTMLElementJS implements HTMLLabelElement native "*HTMLLabelElement" {

  HTMLElementJS get control() native "return this.control;";

  HTMLFormElementJS get form() native "return this.form;";

  String get htmlFor() native "return this.htmlFor;";

  void set htmlFor(String value) native "this.htmlFor = value;";
}

class HTMLLegendElementJS extends HTMLElementJS implements HTMLLegendElement native "*HTMLLegendElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  HTMLFormElementJS get form() native "return this.form;";
}

class HTMLLinkElementJS extends HTMLElementJS implements HTMLLinkElement native "*HTMLLinkElement" {

  String get charset() native "return this.charset;";

  void set charset(String value) native "this.charset = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  String get href() native "return this.href;";

  void set href(String value) native "this.href = value;";

  String get hreflang() native "return this.hreflang;";

  void set hreflang(String value) native "this.hreflang = value;";

  String get media() native "return this.media;";

  void set media(String value) native "this.media = value;";

  String get rel() native "return this.rel;";

  void set rel(String value) native "this.rel = value;";

  String get rev() native "return this.rev;";

  void set rev(String value) native "this.rev = value;";

  StyleSheetJS get sheet() native "return this.sheet;";

  DOMSettableTokenListJS get sizes() native "return this.sizes;";

  void set sizes(DOMSettableTokenListJS value) native "this.sizes = value;";

  String get target() native "return this.target;";

  void set target(String value) native "this.target = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";
}

class HTMLMapElementJS extends HTMLElementJS implements HTMLMapElement native "*HTMLMapElement" {

  HTMLCollectionJS get areas() native "return this.areas;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";
}

class HTMLMarqueeElementJS extends HTMLElementJS implements HTMLMarqueeElement native "*HTMLMarqueeElement" {

  String get behavior() native "return this.behavior;";

  void set behavior(String value) native "this.behavior = value;";

  String get bgColor() native "return this.bgColor;";

  void set bgColor(String value) native "this.bgColor = value;";

  String get direction() native "return this.direction;";

  void set direction(String value) native "this.direction = value;";

  String get height() native "return this.height;";

  void set height(String value) native "this.height = value;";

  int get hspace() native "return this.hspace;";

  void set hspace(int value) native "this.hspace = value;";

  int get loop() native "return this.loop;";

  void set loop(int value) native "this.loop = value;";

  int get scrollAmount() native "return this.scrollAmount;";

  void set scrollAmount(int value) native "this.scrollAmount = value;";

  int get scrollDelay() native "return this.scrollDelay;";

  void set scrollDelay(int value) native "this.scrollDelay = value;";

  bool get trueSpeed() native "return this.trueSpeed;";

  void set trueSpeed(bool value) native "this.trueSpeed = value;";

  int get vspace() native "return this.vspace;";

  void set vspace(int value) native "this.vspace = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";

  void start() native;

  void stop() native;
}

class HTMLMediaElementJS extends HTMLElementJS implements HTMLMediaElement native "*HTMLMediaElement" {

  static final int EOS_DECODE_ERR = 2;

  static final int EOS_NETWORK_ERR = 1;

  static final int EOS_NO_ERROR = 0;

  static final int HAVE_CURRENT_DATA = 2;

  static final int HAVE_ENOUGH_DATA = 4;

  static final int HAVE_FUTURE_DATA = 3;

  static final int HAVE_METADATA = 1;

  static final int HAVE_NOTHING = 0;

  static final int NETWORK_EMPTY = 0;

  static final int NETWORK_IDLE = 1;

  static final int NETWORK_LOADING = 2;

  static final int NETWORK_NO_SOURCE = 3;

  static final int SOURCE_CLOSED = 0;

  static final int SOURCE_ENDED = 2;

  static final int SOURCE_OPEN = 1;

  bool get autoplay() native "return this.autoplay;";

  void set autoplay(bool value) native "this.autoplay = value;";

  TimeRangesJS get buffered() native "return this.buffered;";

  MediaControllerJS get controller() native "return this.controller;";

  void set controller(MediaControllerJS value) native "this.controller = value;";

  bool get controls() native "return this.controls;";

  void set controls(bool value) native "this.controls = value;";

  String get currentSrc() native "return this.currentSrc;";

  num get currentTime() native "return this.currentTime;";

  void set currentTime(num value) native "this.currentTime = value;";

  bool get defaultMuted() native "return this.defaultMuted;";

  void set defaultMuted(bool value) native "this.defaultMuted = value;";

  num get defaultPlaybackRate() native "return this.defaultPlaybackRate;";

  void set defaultPlaybackRate(num value) native "this.defaultPlaybackRate = value;";

  num get duration() native "return this.duration;";

  bool get ended() native "return this.ended;";

  MediaErrorJS get error() native "return this.error;";

  num get initialTime() native "return this.initialTime;";

  bool get loop() native "return this.loop;";

  void set loop(bool value) native "this.loop = value;";

  String get mediaGroup() native "return this.mediaGroup;";

  void set mediaGroup(String value) native "this.mediaGroup = value;";

  bool get muted() native "return this.muted;";

  void set muted(bool value) native "this.muted = value;";

  int get networkState() native "return this.networkState;";

  bool get paused() native "return this.paused;";

  num get playbackRate() native "return this.playbackRate;";

  void set playbackRate(num value) native "this.playbackRate = value;";

  TimeRangesJS get played() native "return this.played;";

  String get preload() native "return this.preload;";

  void set preload(String value) native "this.preload = value;";

  int get readyState() native "return this.readyState;";

  TimeRangesJS get seekable() native "return this.seekable;";

  bool get seeking() native "return this.seeking;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  num get startTime() native "return this.startTime;";

  TextTrackListJS get textTracks() native "return this.textTracks;";

  num get volume() native "return this.volume;";

  void set volume(num value) native "this.volume = value;";

  int get webkitAudioDecodedByteCount() native "return this.webkitAudioDecodedByteCount;";

  bool get webkitClosedCaptionsVisible() native "return this.webkitClosedCaptionsVisible;";

  void set webkitClosedCaptionsVisible(bool value) native "this.webkitClosedCaptionsVisible = value;";

  bool get webkitHasClosedCaptions() native "return this.webkitHasClosedCaptions;";

  String get webkitMediaSourceURL() native "return this.webkitMediaSourceURL;";

  bool get webkitPreservesPitch() native "return this.webkitPreservesPitch;";

  void set webkitPreservesPitch(bool value) native "this.webkitPreservesPitch = value;";

  int get webkitSourceState() native "return this.webkitSourceState;";

  int get webkitVideoDecodedByteCount() native "return this.webkitVideoDecodedByteCount;";

  TextTrackJS addTrack(String kind, [String label = null, String language = null]) native;

  String canPlayType(String type) native;

  void load() native;

  void pause() native;

  void play() native;

  void webkitSourceAppend(Uint8ArrayJS data) native;

  void webkitSourceEndOfStream(int status) native;
}

class HTMLMenuElementJS extends HTMLElementJS implements HTMLMenuElement native "*HTMLMenuElement" {

  bool get compact() native "return this.compact;";

  void set compact(bool value) native "this.compact = value;";
}

class HTMLMetaElementJS extends HTMLElementJS implements HTMLMetaElement native "*HTMLMetaElement" {

  String get content() native "return this.content;";

  void set content(String value) native "this.content = value;";

  String get httpEquiv() native "return this.httpEquiv;";

  void set httpEquiv(String value) native "this.httpEquiv = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get scheme() native "return this.scheme;";

  void set scheme(String value) native "this.scheme = value;";
}

class HTMLMeterElementJS extends HTMLElementJS implements HTMLMeterElement native "*HTMLMeterElement" {

  HTMLFormElementJS get form() native "return this.form;";

  num get high() native "return this.high;";

  void set high(num value) native "this.high = value;";

  NodeListJS get labels() native "return this.labels;";

  num get low() native "return this.low;";

  void set low(num value) native "this.low = value;";

  num get max() native "return this.max;";

  void set max(num value) native "this.max = value;";

  num get min() native "return this.min;";

  void set min(num value) native "this.min = value;";

  num get optimum() native "return this.optimum;";

  void set optimum(num value) native "this.optimum = value;";

  num get value() native "return this.value;";

  void set value(num value) native "this.value = value;";
}

class HTMLModElementJS extends HTMLElementJS implements HTMLModElement native "*HTMLModElement" {

  String get cite() native "return this.cite;";

  void set cite(String value) native "this.cite = value;";

  String get dateTime() native "return this.dateTime;";

  void set dateTime(String value) native "this.dateTime = value;";
}

class HTMLOListElementJS extends HTMLElementJS implements HTMLOListElement native "*HTMLOListElement" {

  bool get compact() native "return this.compact;";

  void set compact(bool value) native "this.compact = value;";

  bool get reversed() native "return this.reversed;";

  void set reversed(bool value) native "this.reversed = value;";

  int get start() native "return this.start;";

  void set start(int value) native "this.start = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";
}

class HTMLObjectElementJS extends HTMLElementJS implements HTMLObjectElement native "*HTMLObjectElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get archive() native "return this.archive;";

  void set archive(String value) native "this.archive = value;";

  String get border() native "return this.border;";

  void set border(String value) native "this.border = value;";

  String get code() native "return this.code;";

  void set code(String value) native "this.code = value;";

  String get codeBase() native "return this.codeBase;";

  void set codeBase(String value) native "this.codeBase = value;";

  String get codeType() native "return this.codeType;";

  void set codeType(String value) native "this.codeType = value;";

  DocumentJS get contentDocument() native "return this.contentDocument;";

  String get data() native "return this.data;";

  void set data(String value) native "this.data = value;";

  bool get declare() native "return this.declare;";

  void set declare(bool value) native "this.declare = value;";

  HTMLFormElementJS get form() native "return this.form;";

  String get height() native "return this.height;";

  void set height(String value) native "this.height = value;";

  int get hspace() native "return this.hspace;";

  void set hspace(int value) native "this.hspace = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get standby() native "return this.standby;";

  void set standby(String value) native "this.standby = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  String get useMap() native "return this.useMap;";

  void set useMap(String value) native "this.useMap = value;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  int get vspace() native "return this.vspace;";

  void set vspace(int value) native "this.vspace = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";

  bool get willValidate() native "return this.willValidate;";

  bool checkValidity() native;

  SVGDocumentJS getSVGDocument() native;

  void setCustomValidity(String error) native;
}

class HTMLOptGroupElementJS extends HTMLElementJS implements HTMLOptGroupElement native "*HTMLOptGroupElement" {

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  String get label() native "return this.label;";

  void set label(String value) native "this.label = value;";
}

class HTMLOptionElementJS extends HTMLElementJS implements HTMLOptionElement native "*HTMLOptionElement" {

  bool get defaultSelected() native "return this.defaultSelected;";

  void set defaultSelected(bool value) native "this.defaultSelected = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  HTMLFormElementJS get form() native "return this.form;";

  int get index() native "return this.index;";

  String get label() native "return this.label;";

  void set label(String value) native "this.label = value;";

  bool get selected() native "return this.selected;";

  void set selected(bool value) native "this.selected = value;";

  String get text() native "return this.text;";

  void set text(String value) native "this.text = value;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";
}

class HTMLOptionsCollectionJS extends HTMLCollectionJS implements HTMLOptionsCollection native "*HTMLOptionsCollection" {

  int get length() native "return this.length;";

  void set length(int value) native "this.length = value;";

  int get selectedIndex() native "return this.selectedIndex;";

  void set selectedIndex(int value) native "this.selectedIndex = value;";

  void remove(int index) native;
}

class HTMLOutputElementJS extends HTMLElementJS implements HTMLOutputElement native "*HTMLOutputElement" {

  String get defaultValue() native "return this.defaultValue;";

  void set defaultValue(String value) native "this.defaultValue = value;";

  HTMLFormElementJS get form() native "return this.form;";

  DOMSettableTokenListJS get htmlFor() native "return this.htmlFor;";

  void set htmlFor(DOMSettableTokenListJS value) native "this.htmlFor = value;";

  NodeListJS get labels() native "return this.labels;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get type() native "return this.type;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";

  bool get willValidate() native "return this.willValidate;";

  bool checkValidity() native;

  void setCustomValidity(String error) native;
}

class HTMLParagraphElementJS extends HTMLElementJS implements HTMLParagraphElement native "*HTMLParagraphElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";
}

class HTMLParamElementJS extends HTMLElementJS implements HTMLParamElement native "*HTMLParamElement" {

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";

  String get valueType() native "return this.valueType;";

  void set valueType(String value) native "this.valueType = value;";
}

class HTMLPreElementJS extends HTMLElementJS implements HTMLPreElement native "*HTMLPreElement" {

  int get width() native "return this.width;";

  void set width(int value) native "this.width = value;";

  bool get wrap() native "return this.wrap;";

  void set wrap(bool value) native "this.wrap = value;";
}

class HTMLProgressElementJS extends HTMLElementJS implements HTMLProgressElement native "*HTMLProgressElement" {

  HTMLFormElementJS get form() native "return this.form;";

  NodeListJS get labels() native "return this.labels;";

  num get max() native "return this.max;";

  void set max(num value) native "this.max = value;";

  num get position() native "return this.position;";

  num get value() native "return this.value;";

  void set value(num value) native "this.value = value;";
}

class HTMLPropertiesCollectionJS extends HTMLCollectionJS implements HTMLPropertiesCollection native "*HTMLPropertiesCollection" {

  int get length() native "return this.length;";

  NodeJS item(int index) native;
}

class HTMLQuoteElementJS extends HTMLElementJS implements HTMLQuoteElement native "*HTMLQuoteElement" {

  String get cite() native "return this.cite;";

  void set cite(String value) native "this.cite = value;";
}

class HTMLScriptElementJS extends HTMLElementJS implements HTMLScriptElement native "*HTMLScriptElement" {

  bool get async() native "return this.async;";

  void set async(bool value) native "this.async = value;";

  String get charset() native "return this.charset;";

  void set charset(String value) native "this.charset = value;";

  bool get defer() native "return this.defer;";

  void set defer(bool value) native "this.defer = value;";

  String get event() native "return this.event;";

  void set event(String value) native "this.event = value;";

  String get htmlFor() native "return this.htmlFor;";

  void set htmlFor(String value) native "this.htmlFor = value;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get text() native "return this.text;";

  void set text(String value) native "this.text = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";
}

class HTMLSelectElementJS extends HTMLElementJS implements HTMLSelectElement native "*HTMLSelectElement" {

  bool get autofocus() native "return this.autofocus;";

  void set autofocus(bool value) native "this.autofocus = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  HTMLFormElementJS get form() native "return this.form;";

  NodeListJS get labels() native "return this.labels;";

  int get length() native "return this.length;";

  void set length(int value) native "this.length = value;";

  bool get multiple() native "return this.multiple;";

  void set multiple(bool value) native "this.multiple = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  HTMLOptionsCollectionJS get options() native "return this.options;";

  bool get required() native "return this.required;";

  void set required(bool value) native "this.required = value;";

  int get selectedIndex() native "return this.selectedIndex;";

  void set selectedIndex(int value) native "this.selectedIndex = value;";

  int get size() native "return this.size;";

  void set size(int value) native "this.size = value;";

  String get type() native "return this.type;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";

  bool get willValidate() native "return this.willValidate;";

  void add(HTMLElementJS element, HTMLElementJS before) native;

  bool checkValidity() native;

  NodeJS item(int index) native;

  NodeJS namedItem(String name) native;

  void remove(var index_OR_option) native;

  void setCustomValidity(String error) native;
}

class HTMLSourceElementJS extends HTMLElementJS implements HTMLSourceElement native "*HTMLSourceElement" {

  String get media() native "return this.media;";

  void set media(String value) native "this.media = value;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";
}

class HTMLSpanElementJS extends HTMLElementJS implements HTMLSpanElement native "*HTMLSpanElement" {
}

class HTMLStyleElementJS extends HTMLElementJS implements HTMLStyleElement native "*HTMLStyleElement" {

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  String get media() native "return this.media;";

  void set media(String value) native "this.media = value;";

  bool get scoped() native "return this.scoped;";

  void set scoped(bool value) native "this.scoped = value;";

  StyleSheetJS get sheet() native "return this.sheet;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";
}

class HTMLTableCaptionElementJS extends HTMLElementJS implements HTMLTableCaptionElement native "*HTMLTableCaptionElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";
}

class HTMLTableCellElementJS extends HTMLElementJS implements HTMLTableCellElement native "*HTMLTableCellElement" {

  String get abbr() native "return this.abbr;";

  void set abbr(String value) native "this.abbr = value;";

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get axis() native "return this.axis;";

  void set axis(String value) native "this.axis = value;";

  String get bgColor() native "return this.bgColor;";

  void set bgColor(String value) native "this.bgColor = value;";

  int get cellIndex() native "return this.cellIndex;";

  String get ch() native "return this.ch;";

  void set ch(String value) native "this.ch = value;";

  String get chOff() native "return this.chOff;";

  void set chOff(String value) native "this.chOff = value;";

  int get colSpan() native "return this.colSpan;";

  void set colSpan(int value) native "this.colSpan = value;";

  String get headers() native "return this.headers;";

  void set headers(String value) native "this.headers = value;";

  String get height() native "return this.height;";

  void set height(String value) native "this.height = value;";

  bool get noWrap() native "return this.noWrap;";

  void set noWrap(bool value) native "this.noWrap = value;";

  int get rowSpan() native "return this.rowSpan;";

  void set rowSpan(int value) native "this.rowSpan = value;";

  String get scope() native "return this.scope;";

  void set scope(String value) native "this.scope = value;";

  String get vAlign() native "return this.vAlign;";

  void set vAlign(String value) native "this.vAlign = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";
}

class HTMLTableColElementJS extends HTMLElementJS implements HTMLTableColElement native "*HTMLTableColElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get ch() native "return this.ch;";

  void set ch(String value) native "this.ch = value;";

  String get chOff() native "return this.chOff;";

  void set chOff(String value) native "this.chOff = value;";

  int get span() native "return this.span;";

  void set span(int value) native "this.span = value;";

  String get vAlign() native "return this.vAlign;";

  void set vAlign(String value) native "this.vAlign = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";
}

class HTMLTableElementJS extends HTMLElementJS implements HTMLTableElement native "*HTMLTableElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get bgColor() native "return this.bgColor;";

  void set bgColor(String value) native "this.bgColor = value;";

  String get border() native "return this.border;";

  void set border(String value) native "this.border = value;";

  HTMLTableCaptionElementJS get caption() native "return this.caption;";

  void set caption(HTMLTableCaptionElementJS value) native "this.caption = value;";

  String get cellPadding() native "return this.cellPadding;";

  void set cellPadding(String value) native "this.cellPadding = value;";

  String get cellSpacing() native "return this.cellSpacing;";

  void set cellSpacing(String value) native "this.cellSpacing = value;";

  String get frame() native "return this.frame;";

  void set frame(String value) native "this.frame = value;";

  HTMLCollectionJS get rows() native "return this.rows;";

  String get rules() native "return this.rules;";

  void set rules(String value) native "this.rules = value;";

  String get summary() native "return this.summary;";

  void set summary(String value) native "this.summary = value;";

  HTMLCollectionJS get tBodies() native "return this.tBodies;";

  HTMLTableSectionElementJS get tFoot() native "return this.tFoot;";

  void set tFoot(HTMLTableSectionElementJS value) native "this.tFoot = value;";

  HTMLTableSectionElementJS get tHead() native "return this.tHead;";

  void set tHead(HTMLTableSectionElementJS value) native "this.tHead = value;";

  String get width() native "return this.width;";

  void set width(String value) native "this.width = value;";

  HTMLElementJS createCaption() native;

  HTMLElementJS createTFoot() native;

  HTMLElementJS createTHead() native;

  void deleteCaption() native;

  void deleteRow(int index) native;

  void deleteTFoot() native;

  void deleteTHead() native;

  HTMLElementJS insertRow(int index) native;
}

class HTMLTableRowElementJS extends HTMLElementJS implements HTMLTableRowElement native "*HTMLTableRowElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get bgColor() native "return this.bgColor;";

  void set bgColor(String value) native "this.bgColor = value;";

  HTMLCollectionJS get cells() native "return this.cells;";

  String get ch() native "return this.ch;";

  void set ch(String value) native "this.ch = value;";

  String get chOff() native "return this.chOff;";

  void set chOff(String value) native "this.chOff = value;";

  int get rowIndex() native "return this.rowIndex;";

  int get sectionRowIndex() native "return this.sectionRowIndex;";

  String get vAlign() native "return this.vAlign;";

  void set vAlign(String value) native "this.vAlign = value;";

  void deleteCell(int index) native;

  HTMLElementJS insertCell(int index) native;
}

class HTMLTableSectionElementJS extends HTMLElementJS implements HTMLTableSectionElement native "*HTMLTableSectionElement" {

  String get align() native "return this.align;";

  void set align(String value) native "this.align = value;";

  String get ch() native "return this.ch;";

  void set ch(String value) native "this.ch = value;";

  String get chOff() native "return this.chOff;";

  void set chOff(String value) native "this.chOff = value;";

  HTMLCollectionJS get rows() native "return this.rows;";

  String get vAlign() native "return this.vAlign;";

  void set vAlign(String value) native "this.vAlign = value;";

  void deleteRow(int index) native;

  HTMLElementJS insertRow(int index) native;
}

class HTMLTextAreaElementJS extends HTMLElementJS implements HTMLTextAreaElement native "*HTMLTextAreaElement" {

  bool get autofocus() native "return this.autofocus;";

  void set autofocus(bool value) native "this.autofocus = value;";

  int get cols() native "return this.cols;";

  void set cols(int value) native "this.cols = value;";

  String get defaultValue() native "return this.defaultValue;";

  void set defaultValue(String value) native "this.defaultValue = value;";

  String get dirName() native "return this.dirName;";

  void set dirName(String value) native "this.dirName = value;";

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  HTMLFormElementJS get form() native "return this.form;";

  NodeListJS get labels() native "return this.labels;";

  int get maxLength() native "return this.maxLength;";

  void set maxLength(int value) native "this.maxLength = value;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  String get placeholder() native "return this.placeholder;";

  void set placeholder(String value) native "this.placeholder = value;";

  bool get readOnly() native "return this.readOnly;";

  void set readOnly(bool value) native "this.readOnly = value;";

  bool get required() native "return this.required;";

  void set required(bool value) native "this.required = value;";

  int get rows() native "return this.rows;";

  void set rows(int value) native "this.rows = value;";

  String get selectionDirection() native "return this.selectionDirection;";

  void set selectionDirection(String value) native "this.selectionDirection = value;";

  int get selectionEnd() native "return this.selectionEnd;";

  void set selectionEnd(int value) native "this.selectionEnd = value;";

  int get selectionStart() native "return this.selectionStart;";

  void set selectionStart(int value) native "this.selectionStart = value;";

  int get textLength() native "return this.textLength;";

  String get type() native "return this.type;";

  String get validationMessage() native "return this.validationMessage;";

  ValidityStateJS get validity() native "return this.validity;";

  String get value() native "return this.value;";

  void set value(String value) native "this.value = value;";

  bool get willValidate() native "return this.willValidate;";

  String get wrap() native "return this.wrap;";

  void set wrap(String value) native "this.wrap = value;";

  bool checkValidity() native;

  void select() native;

  void setCustomValidity(String error) native;

  void setSelectionRange(int start, int end, [String direction = null]) native;
}

class HTMLTitleElementJS extends HTMLElementJS implements HTMLTitleElement native "*HTMLTitleElement" {

  String get text() native "return this.text;";

  void set text(String value) native "this.text = value;";
}

class HTMLTrackElementJS extends HTMLElementJS implements HTMLTrackElement native "*HTMLTrackElement" {

  static final int ERROR = 3;

  static final int LOADED = 2;

  static final int LOADING = 1;

  static final int NONE = 0;

  bool get isDefault() native "return this.isDefault;";

  void set isDefault(bool value) native "this.isDefault = value;";

  String get kind() native "return this.kind;";

  void set kind(String value) native "this.kind = value;";

  String get label() native "return this.label;";

  void set label(String value) native "this.label = value;";

  int get readyState() native "return this.readyState;";

  String get src() native "return this.src;";

  void set src(String value) native "this.src = value;";

  String get srclang() native "return this.srclang;";

  void set srclang(String value) native "this.srclang = value;";

  TextTrackJS get track() native "return this.track;";
}

class HTMLUListElementJS extends HTMLElementJS implements HTMLUListElement native "*HTMLUListElement" {

  bool get compact() native "return this.compact;";

  void set compact(bool value) native "this.compact = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";
}

class HTMLUnknownElementJS extends HTMLElementJS implements HTMLUnknownElement native "*HTMLUnknownElement" {
}

class HTMLVideoElementJS extends HTMLMediaElementJS implements HTMLVideoElement native "*HTMLVideoElement" {

  int get height() native "return this.height;";

  void set height(int value) native "this.height = value;";

  String get poster() native "return this.poster;";

  void set poster(String value) native "this.poster = value;";

  int get videoHeight() native "return this.videoHeight;";

  int get videoWidth() native "return this.videoWidth;";

  int get webkitDecodedFrameCount() native "return this.webkitDecodedFrameCount;";

  bool get webkitDisplayingFullscreen() native "return this.webkitDisplayingFullscreen;";

  int get webkitDroppedFrameCount() native "return this.webkitDroppedFrameCount;";

  bool get webkitSupportsFullscreen() native "return this.webkitSupportsFullscreen;";

  int get width() native "return this.width;";

  void set width(int value) native "this.width = value;";

  void webkitEnterFullScreen() native;

  void webkitEnterFullscreen() native;

  void webkitExitFullScreen() native;

  void webkitExitFullscreen() native;
}

class HashChangeEventJS extends EventJS implements HashChangeEvent native "*HashChangeEvent" {

  String get newURL() native "return this.newURL;";

  String get oldURL() native "return this.oldURL;";

  void initHashChangeEvent(String type, bool canBubble, bool cancelable, String oldURL, String newURL) native;
}

class HighPass2FilterNodeJS extends AudioNodeJS implements HighPass2FilterNode native "*HighPass2FilterNode" {

  AudioParamJS get cutoff() native "return this.cutoff;";

  AudioParamJS get resonance() native "return this.resonance;";
}

class HistoryJS implements History native "*History" {

  int get length() native "return this.length;";

  void back() native;

  void forward() native;

  void go(int distance) native;

  void pushState(Object data, String title, [String url = null]) native;

  void replaceState(Object data, String title, [String url = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBAnyJS implements IDBAny native "*IDBAny" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBCursorJS implements IDBCursor native "*IDBCursor" {

  static final int NEXT = 0;

  static final int NEXT_NO_DUPLICATE = 1;

  static final int PREV = 2;

  static final int PREV_NO_DUPLICATE = 3;

  int get direction() native "return this.direction;";

  IDBKeyJS get key() native "return this.key;";

  IDBKeyJS get primaryKey() native "return this.primaryKey;";

  IDBAnyJS get source() native "return this.source;";

  void continueFunction([IDBKeyJS key = null]) native;

  IDBRequestJS delete() native;

  IDBRequestJS update(String value) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBCursorWithValueJS extends IDBCursorJS implements IDBCursorWithValue native "*IDBCursorWithValue" {

  IDBAnyJS get value() native "return this.value;";
}

class IDBDatabaseJS implements IDBDatabase native "*IDBDatabase" {

  String get name() native "return this.name;";

  EventListener get onabort() native "return this.onabort;";

  void set onabort(EventListener value) native "this.onabort = value;";

  EventListener get onerror() native "return this.onerror;";

  void set onerror(EventListener value) native "this.onerror = value;";

  EventListener get onversionchange() native "return this.onversionchange;";

  void set onversionchange(EventListener value) native "this.onversionchange = value;";

  String get version() native "return this.version;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void close() native;

  IDBObjectStoreJS createObjectStore(String name) native;

  void deleteObjectStore(String name) native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  IDBVersionChangeRequestJS setVersion(String version) native;

  IDBTransactionJS transaction(String storeName, int mode) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBDatabaseErrorJS implements IDBDatabaseError native "*IDBDatabaseError" {

  int get code() native "return this.code;";

  void set code(int value) native "this.code = value;";

  String get message() native "return this.message;";

  void set message(String value) native "this.message = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBDatabaseExceptionJS implements IDBDatabaseException native "*IDBDatabaseException" {

  static final int ABORT_ERR = 8;

  static final int CONSTRAINT_ERR = 4;

  static final int DATA_ERR = 5;

  static final int NON_TRANSIENT_ERR = 2;

  static final int NOT_ALLOWED_ERR = 6;

  static final int NOT_FOUND_ERR = 3;

  static final int NO_ERR = 0;

  static final int QUOTA_ERR = 11;

  static final int READ_ONLY_ERR = 9;

  static final int TIMEOUT_ERR = 10;

  static final int TRANSACTION_INACTIVE_ERR = 7;

  static final int UNKNOWN_ERR = 1;

  static final int VER_ERR = 12;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBFactoryJS implements IDBFactory native "*IDBFactory" {

  int cmp(IDBKeyJS first, IDBKeyJS second) native;

  IDBVersionChangeRequestJS deleteDatabase(String name) native;

  IDBRequestJS getDatabaseNames() native;

  IDBRequestJS open(String name) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBIndexJS implements IDBIndex native "*IDBIndex" {

  String get keyPath() native "return this.keyPath;";

  bool get multiEntry() native "return this.multiEntry;";

  String get name() native "return this.name;";

  IDBObjectStoreJS get objectStore() native "return this.objectStore;";

  bool get unique() native "return this.unique;";

  IDBRequestJS count([IDBKeyRangeJS range = null]) native;

  IDBRequestJS getObject(IDBKeyJS key) native;

  IDBRequestJS getKey(IDBKeyJS key) native;

  IDBRequestJS openCursor([IDBKeyRangeJS range = null, int direction = null]) native;

  IDBRequestJS openKeyCursor([IDBKeyRangeJS range = null, int direction = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBKeyJS implements IDBKey native "*IDBKey" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBKeyRangeJS implements IDBKeyRange native "*IDBKeyRange" {

  IDBKeyJS get lower() native "return this.lower;";

  bool get lowerOpen() native "return this.lowerOpen;";

  IDBKeyJS get upper() native "return this.upper;";

  bool get upperOpen() native "return this.upperOpen;";

  IDBKeyRangeJS bound(IDBKeyJS lower, IDBKeyJS upper, [bool lowerOpen = null, bool upperOpen = null]) native;

  IDBKeyRangeJS lowerBound(IDBKeyJS bound, [bool open = null]) native;

  IDBKeyRangeJS only(IDBKeyJS value) native;

  IDBKeyRangeJS upperBound(IDBKeyJS bound, [bool open = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBObjectStoreJS implements IDBObjectStore native "*IDBObjectStore" {

  String get keyPath() native "return this.keyPath;";

  String get name() native "return this.name;";

  IDBTransactionJS get transaction() native "return this.transaction;";

  IDBRequestJS add(String value, [IDBKeyJS key = null]) native;

  IDBRequestJS clear() native;

  IDBRequestJS count([IDBKeyRangeJS range = null]) native;

  IDBIndexJS createIndex(String name, String keyPath) native;

  IDBRequestJS delete(IDBKeyJS key) native;

  void deleteIndex(String name) native;

  IDBRequestJS getObject(IDBKeyJS key) native;

  IDBIndexJS index(String name) native;

  IDBRequestJS openCursor([IDBKeyRangeJS range = null, int direction = null]) native;

  IDBRequestJS put(String value, [IDBKeyJS key = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBRequestJS implements IDBRequest native "*IDBRequest" {

  static final int DONE = 2;

  static final int LOADING = 1;

  int get errorCode() native "return this.errorCode;";

  EventListener get onerror() native "return this.onerror;";

  void set onerror(EventListener value) native "this.onerror = value;";

  EventListener get onsuccess() native "return this.onsuccess;";

  void set onsuccess(EventListener value) native "this.onsuccess = value;";

  int get readyState() native "return this.readyState;";

  IDBAnyJS get result() native "return this.result;";

  IDBAnyJS get source() native "return this.source;";

  IDBTransactionJS get transaction() native "return this.transaction;";

  String get webkitErrorMessage() native "return this.webkitErrorMessage;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBTransactionJS implements IDBTransaction native "*IDBTransaction" {

  static final int READ_ONLY = 0;

  static final int READ_WRITE = 1;

  static final int VERSION_CHANGE = 2;

  IDBDatabaseJS get db() native "return this.db;";

  int get mode() native "return this.mode;";

  EventListener get onabort() native "return this.onabort;";

  void set onabort(EventListener value) native "this.onabort = value;";

  EventListener get oncomplete() native "return this.oncomplete;";

  void set oncomplete(EventListener value) native "this.oncomplete = value;";

  EventListener get onerror() native "return this.onerror;";

  void set onerror(EventListener value) native "this.onerror = value;";

  void abort() native;

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  IDBObjectStoreJS objectStore(String name) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class IDBVersionChangeEventJS extends EventJS implements IDBVersionChangeEvent native "*IDBVersionChangeEvent" {

  String get version() native "return this.version;";
}

class IDBVersionChangeRequestJS extends IDBRequestJS implements IDBVersionChangeRequest native "*IDBVersionChangeRequest" {

  EventListener get onblocked() native "return this.onblocked;";

  void set onblocked(EventListener value) native "this.onblocked = value;";
}

class ImageDataJS implements ImageData native "*ImageData" {

  CanvasPixelArrayJS get data() native "return this.data;";

  int get height() native "return this.height;";

  int get width() native "return this.width;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class InjectedScriptHostJS implements InjectedScriptHost native "*InjectedScriptHost" {

  void clearConsoleMessages() native;

  void copyText(String text) native;

  int databaseId(Object database) native;

  void didCreateWorker(int id, String url, bool isFakeWorker) native;

  void didDestroyWorker(int id) native;

  Object evaluate(String text) native;

  Object functionLocation(Object object) native;

  void inspect(Object objectId, Object hints) native;

  Object inspectedNode(int num) native;

  Object internalConstructorName(Object object) native;

  bool isHTMLAllCollection(Object object) native;

  int nextWorkerId() native;

  int storageId(Object storage) native;

  String type(Object object) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class InspectorFrontendHostJS implements InspectorFrontendHost native "*InspectorFrontendHost" {

  void bringToFront() native;

  bool canSaveAs() native;

  void closeWindow() native;

  void copyText(String text) native;

  String hiddenPanels() native;

  void inspectedURLChanged(String newURL) native;

  String loadResourceSynchronously(String url) native;

  void loaded() native;

  String localizedStringsURL() native;

  void moveWindowBy(num x, num y) native;

  String platform() native;

  String port() native;

  void recordActionTaken(int actionCode) native;

  void recordPanelShown(int panelCode) native;

  void recordSettingChanged(int settingChanged) native;

  void requestAttachWindow() native;

  void requestDetachWindow() native;

  void requestSetDockSide(String side) native;

  void saveAs(String fileName, String content) native;

  void sendMessageToBackend(String message) native;

  void setAttachedWindowHeight(int height) native;

  void setInjectedScriptForOrigin(String origin, String script) native;

  void showContextMenu(MouseEventJS event, Object items) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class Int16ArrayJS extends ArrayBufferViewJS implements Int16Array, List<int> native "*Int16Array" {

  factory Int16Array(int length) =>  _construct(length);

  factory Int16Array.fromList(List<int> list) => _construct(list);

  factory Int16Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Int16Array(arg);';

  static final int BYTES_PER_ELEMENT = 2;

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  void setElements(Object array, [int offset = null]) native;

  Int16ArrayJS subarray(int start, [int end = null]) native;
}

class Int32ArrayJS extends ArrayBufferViewJS implements Int32Array, List<int> native "*Int32Array" {

  factory Int32Array(int length) =>  _construct(length);

  factory Int32Array.fromList(List<int> list) => _construct(list);

  factory Int32Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Int32Array(arg);';

  static final int BYTES_PER_ELEMENT = 4;

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  void setElements(Object array, [int offset = null]) native;

  Int32ArrayJS subarray(int start, [int end = null]) native;
}

class Int8ArrayJS extends ArrayBufferViewJS implements Int8Array, List<int> native "*Int8Array" {

  factory Int8Array(int length) =>  _construct(length);

  factory Int8Array.fromList(List<int> list) => _construct(list);

  factory Int8Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Int8Array(arg);';

  static final int BYTES_PER_ELEMENT = 1;

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  void setElements(Object array, [int offset = null]) native;

  Int8ArrayJS subarray(int start, [int end = null]) native;
}

class JavaScriptAudioNodeJS extends AudioNodeJS implements JavaScriptAudioNode native "*JavaScriptAudioNode" {

  int get bufferSize() native "return this.bufferSize;";

  EventListener get onaudioprocess() native "return this.onaudioprocess;";

  void set onaudioprocess(EventListener value) native "this.onaudioprocess = value;";
}

class JavaScriptCallFrameJS implements JavaScriptCallFrame native "*JavaScriptCallFrame" {

  static final int CATCH_SCOPE = 4;

  static final int CLOSURE_SCOPE = 3;

  static final int GLOBAL_SCOPE = 0;

  static final int LOCAL_SCOPE = 1;

  static final int WITH_SCOPE = 2;

  JavaScriptCallFrameJS get caller() native "return this.caller;";

  int get column() native "return this.column;";

  String get functionName() native "return this.functionName;";

  int get line() native "return this.line;";

  List get scopeChain() native "return this.scopeChain;";

  int get sourceID() native "return this.sourceID;";

  String get type() native "return this.type;";

  void evaluate(String script) native;

  int scopeType(int scopeIndex) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class KeyboardEventJS extends UIEventJS implements KeyboardEvent native "*KeyboardEvent" {

  bool get altGraphKey() native "return this.altGraphKey;";

  bool get altKey() native "return this.altKey;";

  bool get ctrlKey() native "return this.ctrlKey;";

  String get keyIdentifier() native "return this.keyIdentifier;";

  int get keyLocation() native "return this.keyLocation;";

  bool get metaKey() native "return this.metaKey;";

  bool get shiftKey() native "return this.shiftKey;";

  void initKeyboardEvent(String type, bool canBubble, bool cancelable, DOMWindowJS view, String keyIdentifier, int keyLocation, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, bool altGraphKey) native;
}

class LocationJS implements Location native "*Location" {

  String get hash() native "return this.hash;";

  void set hash(String value) native "this.hash = value;";

  String get host() native "return this.host;";

  void set host(String value) native "this.host = value;";

  String get hostname() native "return this.hostname;";

  void set hostname(String value) native "this.hostname = value;";

  String get href() native "return this.href;";

  void set href(String value) native "this.href = value;";

  String get origin() native "return this.origin;";

  String get pathname() native "return this.pathname;";

  void set pathname(String value) native "this.pathname = value;";

  String get port() native "return this.port;";

  void set port(String value) native "this.port = value;";

  String get protocol() native "return this.protocol;";

  void set protocol(String value) native "this.protocol = value;";

  String get search() native "return this.search;";

  void set search(String value) native "this.search = value;";

  void assign(String url) native;

  void reload() native;

  void replace(String url) native;

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class LowPass2FilterNodeJS extends AudioNodeJS implements LowPass2FilterNode native "*LowPass2FilterNode" {

  AudioParamJS get cutoff() native "return this.cutoff;";

  AudioParamJS get resonance() native "return this.resonance;";
}

class MediaControllerJS implements MediaController native "*MediaController" {

  TimeRangesJS get buffered() native "return this.buffered;";

  num get currentTime() native "return this.currentTime;";

  void set currentTime(num value) native "this.currentTime = value;";

  num get defaultPlaybackRate() native "return this.defaultPlaybackRate;";

  void set defaultPlaybackRate(num value) native "this.defaultPlaybackRate = value;";

  num get duration() native "return this.duration;";

  bool get muted() native "return this.muted;";

  void set muted(bool value) native "this.muted = value;";

  bool get paused() native "return this.paused;";

  num get playbackRate() native "return this.playbackRate;";

  void set playbackRate(num value) native "this.playbackRate = value;";

  TimeRangesJS get played() native "return this.played;";

  TimeRangesJS get seekable() native "return this.seekable;";

  num get volume() native "return this.volume;";

  void set volume(num value) native "this.volume = value;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void pause() native;

  void play() native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MediaElementAudioSourceNodeJS extends AudioSourceNodeJS implements MediaElementAudioSourceNode native "*MediaElementAudioSourceNode" {

  HTMLMediaElementJS get mediaElement() native "return this.mediaElement;";
}

class MediaErrorJS implements MediaError native "*MediaError" {

  static final int MEDIA_ERR_ABORTED = 1;

  static final int MEDIA_ERR_DECODE = 3;

  static final int MEDIA_ERR_NETWORK = 2;

  static final int MEDIA_ERR_SRC_NOT_SUPPORTED = 4;

  int get code() native "return this.code;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MediaListJS implements MediaList native "*MediaList" {

  int get length() native "return this.length;";

  String get mediaText() native "return this.mediaText;";

  void set mediaText(String value) native "this.mediaText = value;";

  String operator[](int index) native;

  void operator[]=(int index, String value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }

  void appendMedium(String newMedium) native;

  void deleteMedium(String oldMedium) native;

  String item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MediaQueryListJS implements MediaQueryList native "*MediaQueryList" {

  bool get matches() native "return this.matches;";

  String get media() native "return this.media;";

  void addListener(MediaQueryListListenerJS listener) native;

  void removeListener(MediaQueryListListenerJS listener) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MediaQueryListListenerJS implements MediaQueryListListener native "*MediaQueryListListener" {

  void queryChanged(MediaQueryListJS list) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MemoryInfoJS implements MemoryInfo native "*MemoryInfo" {

  int get jsHeapSizeLimit() native "return this.jsHeapSizeLimit;";

  int get totalJSHeapSize() native "return this.totalJSHeapSize;";

  int get usedJSHeapSize() native "return this.usedJSHeapSize;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MessageChannelJS implements MessageChannel native "*MessageChannel" {

  MessagePortJS get port1() native "return this.port1;";

  MessagePortJS get port2() native "return this.port2;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MessageEventJS extends EventJS implements MessageEvent native "*MessageEvent" {

  Object get data() native "return this.data;";

  String get lastEventId() native "return this.lastEventId;";

  String get origin() native "return this.origin;";

  List get ports() native "return this.ports;";

  DOMWindowJS get source() native "return this.source;";

  void initMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, DOMWindowJS sourceArg, List messagePorts) native;

  void webkitInitMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, DOMWindowJS sourceArg, List transferables) native;
}

class MessagePortJS implements MessagePort native "*MessagePort" {

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void close() native;

  bool dispatchEvent(EventJS evt) native;

  void postMessage(String message, [List messagePorts = null]) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void start() native;

  void webkitPostMessage(String message, [List transfer = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MetadataJS implements Metadata native "*Metadata" {

  Date get modificationTime() native "return this.modificationTime;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MouseEventJS extends UIEventJS implements MouseEvent native "*MouseEvent" {

  bool get altKey() native "return this.altKey;";

  int get button() native "return this.button;";

  int get clientX() native "return this.clientX;";

  int get clientY() native "return this.clientY;";

  bool get ctrlKey() native "return this.ctrlKey;";

  ClipboardJS get dataTransfer() native "return this.dataTransfer;";

  NodeJS get fromElement() native "return this.fromElement;";

  bool get metaKey() native "return this.metaKey;";

  int get offsetX() native "return this.offsetX;";

  int get offsetY() native "return this.offsetY;";

  EventTargetJS get relatedTarget() native "return this.relatedTarget;";

  int get screenX() native "return this.screenX;";

  int get screenY() native "return this.screenY;";

  bool get shiftKey() native "return this.shiftKey;";

  NodeJS get toElement() native "return this.toElement;";

  int get webkitMovementX() native "return this.webkitMovementX;";

  int get webkitMovementY() native "return this.webkitMovementY;";

  int get x() native "return this.x;";

  int get y() native "return this.y;";

  void initMouseEvent(String type, bool canBubble, bool cancelable, DOMWindowJS view, int detail, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, int button, EventTargetJS relatedTarget) native;
}

class MutationCallbackJS implements MutationCallback native "*MutationCallback" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class MutationEventJS extends EventJS implements MutationEvent native "*MutationEvent" {

  static final int ADDITION = 2;

  static final int MODIFICATION = 1;

  static final int REMOVAL = 3;

  int get attrChange() native "return this.attrChange;";

  String get attrName() native "return this.attrName;";

  String get newValue() native "return this.newValue;";

  String get prevValue() native "return this.prevValue;";

  NodeJS get relatedNode() native "return this.relatedNode;";

  void initMutationEvent(String type, bool canBubble, bool cancelable, NodeJS relatedNode, String prevValue, String newValue, String attrName, int attrChange) native;
}

class MutationRecordJS implements MutationRecord native "*MutationRecord" {

  NodeListJS get addedNodes() native "return this.addedNodes;";

  String get attributeName() native "return this.attributeName;";

  String get attributeNamespace() native "return this.attributeNamespace;";

  NodeJS get nextSibling() native "return this.nextSibling;";

  String get oldValue() native "return this.oldValue;";

  NodeJS get previousSibling() native "return this.previousSibling;";

  NodeListJS get removedNodes() native "return this.removedNodes;";

  NodeJS get target() native "return this.target;";

  String get type() native "return this.type;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NamedNodeMapJS implements NamedNodeMap native "*NamedNodeMap" {

  int get length() native "return this.length;";

  NodeJS operator[](int index) native;

  void operator[]=(int index, NodeJS value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }

  NodeJS getNamedItem(String name) native;

  NodeJS getNamedItemNS(String namespaceURI, String localName) native;

  NodeJS item(int index) native;

  NodeJS removeNamedItem(String name) native;

  NodeJS removeNamedItemNS(String namespaceURI, String localName) native;

  NodeJS setNamedItem(NodeJS node) native;

  NodeJS setNamedItemNS(NodeJS node) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NavigatorJS implements Navigator native "*Navigator" {

  String get appCodeName() native "return this.appCodeName;";

  String get appName() native "return this.appName;";

  String get appVersion() native "return this.appVersion;";

  bool get cookieEnabled() native "return this.cookieEnabled;";

  GeolocationJS get geolocation() native "return this.geolocation;";

  String get language() native "return this.language;";

  DOMMimeTypeArrayJS get mimeTypes() native "return this.mimeTypes;";

  bool get onLine() native "return this.onLine;";

  String get platform() native "return this.platform;";

  DOMPluginArrayJS get plugins() native "return this.plugins;";

  String get product() native "return this.product;";

  String get productSub() native "return this.productSub;";

  String get userAgent() native "return this.userAgent;";

  String get vendor() native "return this.vendor;";

  String get vendorSub() native "return this.vendorSub;";

  void getStorageUpdates() native;

  bool javaEnabled() native;

  void registerProtocolHandler(String scheme, String url, String title) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NodeJS implements Node native "*Node" {

  static final int ATTRIBUTE_NODE = 2;

  static final int CDATA_SECTION_NODE = 4;

  static final int COMMENT_NODE = 8;

  static final int DOCUMENT_FRAGMENT_NODE = 11;

  static final int DOCUMENT_NODE = 9;

  static final int DOCUMENT_POSITION_CONTAINED_BY = 0x10;

  static final int DOCUMENT_POSITION_CONTAINS = 0x08;

  static final int DOCUMENT_POSITION_DISCONNECTED = 0x01;

  static final int DOCUMENT_POSITION_FOLLOWING = 0x04;

  static final int DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;

  static final int DOCUMENT_POSITION_PRECEDING = 0x02;

  static final int DOCUMENT_TYPE_NODE = 10;

  static final int ELEMENT_NODE = 1;

  static final int ENTITY_NODE = 6;

  static final int ENTITY_REFERENCE_NODE = 5;

  static final int NOTATION_NODE = 12;

  static final int PROCESSING_INSTRUCTION_NODE = 7;

  static final int TEXT_NODE = 3;

  NamedNodeMapJS get attributes() native "return this.attributes;";

  String get baseURI() native "return this.baseURI;";

  NodeListJS get childNodes() native "return this.childNodes;";

  NodeJS get firstChild() native "return this.firstChild;";

  NodeJS get lastChild() native "return this.lastChild;";

  String get localName() native "return this.localName;";

  String get namespaceURI() native "return this.namespaceURI;";

  NodeJS get nextSibling() native "return this.nextSibling;";

  String get nodeName() native "return this.nodeName;";

  int get nodeType() native "return this.nodeType;";

  String get nodeValue() native "return this.nodeValue;";

  void set nodeValue(String value) native "this.nodeValue = value;";

  DocumentJS get ownerDocument() native "return this.ownerDocument;";

  ElementJS get parentElement() native "return this.parentElement;";

  NodeJS get parentNode() native "return this.parentNode;";

  String get prefix() native "return this.prefix;";

  void set prefix(String value) native "this.prefix = value;";

  NodeJS get previousSibling() native "return this.previousSibling;";

  String get textContent() native "return this.textContent;";

  void set textContent(String value) native "this.textContent = value;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  NodeJS appendChild(NodeJS newChild) native;

  NodeJS cloneNode(bool deep) native;

  int compareDocumentPosition(NodeJS other) native;

  bool contains(NodeJS other) native;

  bool dispatchEvent(EventJS event) native;

  bool hasAttributes() native;

  bool hasChildNodes() native;

  NodeJS insertBefore(NodeJS newChild, NodeJS refChild) native;

  bool isDefaultNamespace(String namespaceURI) native;

  bool isEqualNode(NodeJS other) native;

  bool isSameNode(NodeJS other) native;

  bool isSupported(String feature, String version) native;

  String lookupNamespaceURI(String prefix) native;

  String lookupPrefix(String namespaceURI) native;

  void normalize() native;

  NodeJS removeChild(NodeJS oldChild) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  NodeJS replaceChild(NodeJS newChild, NodeJS oldChild) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NodeFilterJS implements NodeFilter native "*NodeFilter" {

  static final int FILTER_ACCEPT = 1;

  static final int FILTER_REJECT = 2;

  static final int FILTER_SKIP = 3;

  static final int SHOW_ALL = 0xFFFFFFFF;

  static final int SHOW_ATTRIBUTE = 0x00000002;

  static final int SHOW_CDATA_SECTION = 0x00000008;

  static final int SHOW_COMMENT = 0x00000080;

  static final int SHOW_DOCUMENT = 0x00000100;

  static final int SHOW_DOCUMENT_FRAGMENT = 0x00000400;

  static final int SHOW_DOCUMENT_TYPE = 0x00000200;

  static final int SHOW_ELEMENT = 0x00000001;

  static final int SHOW_ENTITY = 0x00000020;

  static final int SHOW_ENTITY_REFERENCE = 0x00000010;

  static final int SHOW_NOTATION = 0x00000800;

  static final int SHOW_PROCESSING_INSTRUCTION = 0x00000040;

  static final int SHOW_TEXT = 0x00000004;

  int acceptNode(NodeJS n) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NodeIteratorJS implements NodeIterator native "*NodeIterator" {

  bool get expandEntityReferences() native "return this.expandEntityReferences;";

  NodeFilterJS get filter() native "return this.filter;";

  bool get pointerBeforeReferenceNode() native "return this.pointerBeforeReferenceNode;";

  NodeJS get referenceNode() native "return this.referenceNode;";

  NodeJS get root() native "return this.root;";

  int get whatToShow() native "return this.whatToShow;";

  void detach() native;

  NodeJS nextNode() native;

  NodeJS previousNode() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NodeListJS implements NodeList native "*NodeList" {

  int get length() native "return this.length;";

  NodeJS operator[](int index) native;

  void operator[]=(int index, NodeJS value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }

  NodeJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NodeSelectorJS implements NodeSelector native "*NodeSelector" {

  ElementJS querySelector(String selectors) native;

  NodeListJS querySelectorAll(String selectors) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NotationJS extends NodeJS implements Notation native "*Notation" {

  String get publicId() native "return this.publicId;";

  String get systemId() native "return this.systemId;";
}

class NotificationJS implements Notification native "*Notification" {

  String get dir() native "return this.dir;";

  void set dir(String value) native "this.dir = value;";

  String get replaceId() native "return this.replaceId;";

  void set replaceId(String value) native "this.replaceId = value;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void cancel() native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void show() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class NotificationCenterJS implements NotificationCenter native "*NotificationCenter" {

  int checkPermission() native;

  NotificationJS createHTMLNotification(String url) native;

  NotificationJS createNotification(String iconUrl, String title, String body) native;

  void requestPermission(VoidCallback callback) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class OESStandardDerivativesJS implements OESStandardDerivatives native "*OESStandardDerivatives" {

  static final int FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class OESTextureFloatJS implements OESTextureFloat native "*OESTextureFloat" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class OESVertexArrayObjectJS implements OESVertexArrayObject native "*OESVertexArrayObject" {

  static final int VERTEX_ARRAY_BINDING_OES = 0x85B5;

  void bindVertexArrayOES(WebGLVertexArrayObjectOESJS arrayObject) native;

  WebGLVertexArrayObjectOESJS createVertexArrayOES() native;

  void deleteVertexArrayOES(WebGLVertexArrayObjectOESJS arrayObject) native;

  bool isVertexArrayOES(WebGLVertexArrayObjectOESJS arrayObject) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class OfflineAudioCompletionEventJS extends EventJS implements OfflineAudioCompletionEvent native "*OfflineAudioCompletionEvent" {

  AudioBufferJS get renderedBuffer() native "return this.renderedBuffer;";
}

class OperationNotAllowedExceptionJS implements OperationNotAllowedException native "*OperationNotAllowedException" {

  static final int NOT_ALLOWED_ERR = 1;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class OverflowEventJS extends EventJS implements OverflowEvent native "*OverflowEvent" {

  static final int BOTH = 2;

  static final int HORIZONTAL = 0;

  static final int VERTICAL = 1;

  bool get horizontalOverflow() native "return this.horizontalOverflow;";

  int get orient() native "return this.orient;";

  bool get verticalOverflow() native "return this.verticalOverflow;";
}

class PageTransitionEventJS extends EventJS implements PageTransitionEvent native "*PageTransitionEvent" {

  bool get persisted() native "return this.persisted;";
}

class PerformanceJS implements Performance native "*Performance" {

  MemoryInfoJS get memory() native "return this.memory;";

  PerformanceNavigationJS get navigation() native "return this.navigation;";

  PerformanceTimingJS get timing() native "return this.timing;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class PerformanceNavigationJS implements PerformanceNavigation native "*PerformanceNavigation" {

  static final int TYPE_BACK_FORWARD = 2;

  static final int TYPE_NAVIGATE = 0;

  static final int TYPE_RELOAD = 1;

  static final int TYPE_RESERVED = 255;

  int get redirectCount() native "return this.redirectCount;";

  int get type() native "return this.type;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class PerformanceTimingJS implements PerformanceTiming native "*PerformanceTiming" {

  int get connectEnd() native "return this.connectEnd;";

  int get connectStart() native "return this.connectStart;";

  int get domComplete() native "return this.domComplete;";

  int get domContentLoadedEventEnd() native "return this.domContentLoadedEventEnd;";

  int get domContentLoadedEventStart() native "return this.domContentLoadedEventStart;";

  int get domInteractive() native "return this.domInteractive;";

  int get domLoading() native "return this.domLoading;";

  int get domainLookupEnd() native "return this.domainLookupEnd;";

  int get domainLookupStart() native "return this.domainLookupStart;";

  int get fetchStart() native "return this.fetchStart;";

  int get loadEventEnd() native "return this.loadEventEnd;";

  int get loadEventStart() native "return this.loadEventStart;";

  int get navigationStart() native "return this.navigationStart;";

  int get redirectEnd() native "return this.redirectEnd;";

  int get redirectStart() native "return this.redirectStart;";

  int get requestStart() native "return this.requestStart;";

  int get responseEnd() native "return this.responseEnd;";

  int get responseStart() native "return this.responseStart;";

  int get secureConnectionStart() native "return this.secureConnectionStart;";

  int get unloadEventEnd() native "return this.unloadEventEnd;";

  int get unloadEventStart() native "return this.unloadEventStart;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class PointerLockJS implements PointerLock native "*PointerLock" {

  bool get isLocked() native "return this.isLocked;";

  void lock(ElementJS target, [VoidCallback successCallback = null, VoidCallback failureCallback = null]) native;

  void unlock() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class PopStateEventJS extends EventJS implements PopStateEvent native "*PopStateEvent" {

  Object get state() native "return this.state;";
}

class PositionErrorJS implements PositionError native "*PositionError" {

  static final int PERMISSION_DENIED = 1;

  static final int POSITION_UNAVAILABLE = 2;

  static final int TIMEOUT = 3;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ProcessingInstructionJS extends NodeJS implements ProcessingInstruction native "*ProcessingInstruction" {

  String get data() native "return this.data;";

  void set data(String value) native "this.data = value;";

  StyleSheetJS get sheet() native "return this.sheet;";

  String get target() native "return this.target;";
}

class ProgressEventJS extends EventJS implements ProgressEvent native "*ProgressEvent" {

  bool get lengthComputable() native "return this.lengthComputable;";

  int get loaded() native "return this.loaded;";

  int get total() native "return this.total;";
}

class RGBColorJS implements RGBColor native "*RGBColor" {

  CSSPrimitiveValueJS get blue() native "return this.blue;";

  CSSPrimitiveValueJS get green() native "return this.green;";

  CSSPrimitiveValueJS get red() native "return this.red;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class RangeJS implements Range native "*Range" {

  static final int END_TO_END = 2;

  static final int END_TO_START = 3;

  static final int NODE_AFTER = 1;

  static final int NODE_BEFORE = 0;

  static final int NODE_BEFORE_AND_AFTER = 2;

  static final int NODE_INSIDE = 3;

  static final int START_TO_END = 1;

  static final int START_TO_START = 0;

  bool get collapsed() native "return this.collapsed;";

  NodeJS get commonAncestorContainer() native "return this.commonAncestorContainer;";

  NodeJS get endContainer() native "return this.endContainer;";

  int get endOffset() native "return this.endOffset;";

  NodeJS get startContainer() native "return this.startContainer;";

  int get startOffset() native "return this.startOffset;";

  DocumentFragmentJS cloneContents() native;

  RangeJS cloneRange() native;

  void collapse(bool toStart) native;

  int compareNode(NodeJS refNode) native;

  int comparePoint(NodeJS refNode, int offset) native;

  DocumentFragmentJS createContextualFragment(String html) native;

  void deleteContents() native;

  void detach() native;

  void expand(String unit) native;

  DocumentFragmentJS extractContents() native;

  ClientRectJS getBoundingClientRect() native;

  ClientRectListJS getClientRects() native;

  void insertNode(NodeJS newNode) native;

  bool intersectsNode(NodeJS refNode) native;

  bool isPointInRange(NodeJS refNode, int offset) native;

  void selectNode(NodeJS refNode) native;

  void selectNodeContents(NodeJS refNode) native;

  void setEnd(NodeJS refNode, int offset) native;

  void setEndAfter(NodeJS refNode) native;

  void setEndBefore(NodeJS refNode) native;

  void setStart(NodeJS refNode, int offset) native;

  void setStartAfter(NodeJS refNode) native;

  void setStartBefore(NodeJS refNode) native;

  void surroundContents(NodeJS newParent) native;

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class RangeExceptionJS implements RangeException native "*RangeException" {

  static final int BAD_BOUNDARYPOINTS_ERR = 1;

  static final int INVALID_NODE_TYPE_ERR = 2;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class RealtimeAnalyserNodeJS extends AudioNodeJS implements RealtimeAnalyserNode native "*RealtimeAnalyserNode" {

  int get fftSize() native "return this.fftSize;";

  void set fftSize(int value) native "this.fftSize = value;";

  int get frequencyBinCount() native "return this.frequencyBinCount;";

  num get maxDecibels() native "return this.maxDecibels;";

  void set maxDecibels(num value) native "this.maxDecibels = value;";

  num get minDecibels() native "return this.minDecibels;";

  void set minDecibels(num value) native "this.minDecibels = value;";

  num get smoothingTimeConstant() native "return this.smoothingTimeConstant;";

  void set smoothingTimeConstant(num value) native "this.smoothingTimeConstant = value;";

  void getByteFrequencyData(Uint8ArrayJS array) native;

  void getByteTimeDomainData(Uint8ArrayJS array) native;

  void getFloatFrequencyData(Float32ArrayJS array) native;
}

class RectJS implements Rect native "*Rect" {

  CSSPrimitiveValueJS get bottom() native "return this.bottom;";

  CSSPrimitiveValueJS get left() native "return this.left;";

  CSSPrimitiveValueJS get right() native "return this.right;";

  CSSPrimitiveValueJS get top() native "return this.top;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SQLErrorJS implements SQLError native "*SQLError" {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SQLExceptionJS implements SQLException native "*SQLException" {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SQLResultSetJS implements SQLResultSet native "*SQLResultSet" {

  int get insertId() native "return this.insertId;";

  SQLResultSetRowListJS get rows() native "return this.rows;";

  int get rowsAffected() native "return this.rowsAffected;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SQLResultSetRowListJS implements SQLResultSetRowList native "*SQLResultSetRowList" {

  int get length() native "return this.length;";

  Object item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SQLTransactionJS implements SQLTransaction native "*SQLTransaction" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SQLTransactionSyncJS implements SQLTransactionSync native "*SQLTransactionSync" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAElementJS extends SVGElementJS implements SVGAElement native "*SVGAElement" {

  SVGAnimatedStringJS get target() native "return this.target;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGAltGlyphDefElementJS extends SVGElementJS implements SVGAltGlyphDefElement native "*SVGAltGlyphDefElement" {
}

class SVGAltGlyphElementJS extends SVGTextPositioningElementJS implements SVGAltGlyphElement native "*SVGAltGlyphElement" {

  String get format() native "return this.format;";

  void set format(String value) native "this.format = value;";

  String get glyphRef() native "return this.glyphRef;";

  void set glyphRef(String value) native "this.glyphRef = value;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";
}

class SVGAltGlyphItemElementJS extends SVGElementJS implements SVGAltGlyphItemElement native "*SVGAltGlyphItemElement" {
}

class SVGAngleJS implements SVGAngle native "*SVGAngle" {

  static final int SVG_ANGLETYPE_DEG = 2;

  static final int SVG_ANGLETYPE_GRAD = 4;

  static final int SVG_ANGLETYPE_RAD = 3;

  static final int SVG_ANGLETYPE_UNKNOWN = 0;

  static final int SVG_ANGLETYPE_UNSPECIFIED = 1;

  int get unitType() native "return this.unitType;";

  num get value() native "return this.value;";

  void set value(num value) native "this.value = value;";

  String get valueAsString() native "return this.valueAsString;";

  void set valueAsString(String value) native "this.valueAsString = value;";

  num get valueInSpecifiedUnits() native "return this.valueInSpecifiedUnits;";

  void set valueInSpecifiedUnits(num value) native "this.valueInSpecifiedUnits = value;";

  void convertToSpecifiedUnits(int unitType) native;

  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimateColorElementJS extends SVGAnimationElementJS implements SVGAnimateColorElement native "*SVGAnimateColorElement" {
}

class SVGAnimateElementJS extends SVGAnimationElementJS implements SVGAnimateElement native "*SVGAnimateElement" {
}

class SVGAnimateMotionElementJS extends SVGAnimationElementJS implements SVGAnimateMotionElement native "*SVGAnimateMotionElement" {
}

class SVGAnimateTransformElementJS extends SVGAnimationElementJS implements SVGAnimateTransformElement native "*SVGAnimateTransformElement" {
}

class SVGAnimatedAngleJS implements SVGAnimatedAngle native "*SVGAnimatedAngle" {

  SVGAngleJS get animVal() native "return this.animVal;";

  SVGAngleJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedBooleanJS implements SVGAnimatedBoolean native "*SVGAnimatedBoolean" {

  bool get animVal() native "return this.animVal;";

  bool get baseVal() native "return this.baseVal;";

  void set baseVal(bool value) native "this.baseVal = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedEnumerationJS implements SVGAnimatedEnumeration native "*SVGAnimatedEnumeration" {

  int get animVal() native "return this.animVal;";

  int get baseVal() native "return this.baseVal;";

  void set baseVal(int value) native "this.baseVal = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedIntegerJS implements SVGAnimatedInteger native "*SVGAnimatedInteger" {

  int get animVal() native "return this.animVal;";

  int get baseVal() native "return this.baseVal;";

  void set baseVal(int value) native "this.baseVal = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedLengthJS implements SVGAnimatedLength native "*SVGAnimatedLength" {

  SVGLengthJS get animVal() native "return this.animVal;";

  SVGLengthJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedLengthListJS implements SVGAnimatedLengthList native "*SVGAnimatedLengthList" {

  SVGLengthListJS get animVal() native "return this.animVal;";

  SVGLengthListJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedNumberJS implements SVGAnimatedNumber native "*SVGAnimatedNumber" {

  num get animVal() native "return this.animVal;";

  num get baseVal() native "return this.baseVal;";

  void set baseVal(num value) native "this.baseVal = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedNumberListJS implements SVGAnimatedNumberList native "*SVGAnimatedNumberList" {

  SVGNumberListJS get animVal() native "return this.animVal;";

  SVGNumberListJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedPreserveAspectRatioJS implements SVGAnimatedPreserveAspectRatio native "*SVGAnimatedPreserveAspectRatio" {

  SVGPreserveAspectRatioJS get animVal() native "return this.animVal;";

  SVGPreserveAspectRatioJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedRectJS implements SVGAnimatedRect native "*SVGAnimatedRect" {

  SVGRectJS get animVal() native "return this.animVal;";

  SVGRectJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedStringJS implements SVGAnimatedString native "*SVGAnimatedString" {

  String get animVal() native "return this.animVal;";

  String get baseVal() native "return this.baseVal;";

  void set baseVal(String value) native "this.baseVal = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimatedTransformListJS implements SVGAnimatedTransformList native "*SVGAnimatedTransformList" {

  SVGTransformListJS get animVal() native "return this.animVal;";

  SVGTransformListJS get baseVal() native "return this.baseVal;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGAnimationElementJS extends SVGElementJS implements SVGAnimationElement native "*SVGAnimationElement" {

  SVGElementJS get targetElement() native "return this.targetElement;";

  num getCurrentTime() native;

  num getSimpleDuration() native;

  num getStartTime() native;

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From ElementTimeControl

  void beginElement() native;

  void beginElementAt(num offset) native;

  void endElement() native;

  void endElementAt(num offset) native;
}

class SVGCircleElementJS extends SVGElementJS implements SVGCircleElement native "*SVGCircleElement" {

  SVGAnimatedLengthJS get cx() native "return this.cx;";

  SVGAnimatedLengthJS get cy() native "return this.cy;";

  SVGAnimatedLengthJS get r() native "return this.r;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGClipPathElementJS extends SVGElementJS implements SVGClipPathElement native "*SVGClipPathElement" {

  SVGAnimatedEnumerationJS get clipPathUnits() native "return this.clipPathUnits;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGColorJS extends CSSValueJS implements SVGColor native "*SVGColor" {

  static final int SVG_COLORTYPE_CURRENTCOLOR = 3;

  static final int SVG_COLORTYPE_RGBCOLOR = 1;

  static final int SVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_COLORTYPE_UNKNOWN = 0;

  int get colorType() native "return this.colorType;";

  RGBColorJS get rgbColor() native "return this.rgbColor;";

  void setColor(int colorType, String rgbColor, String iccColor) native;

  void setRGBColor(String rgbColor) native;

  void setRGBColorICCColor(String rgbColor, String iccColor) native;
}

class SVGComponentTransferFunctionElementJS extends SVGElementJS implements SVGComponentTransferFunctionElement native "*SVGComponentTransferFunctionElement" {

  static final int SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0;

  SVGAnimatedNumberJS get amplitude() native "return this.amplitude;";

  SVGAnimatedNumberJS get exponent() native "return this.exponent;";

  SVGAnimatedNumberJS get intercept() native "return this.intercept;";

  SVGAnimatedNumberJS get offset() native "return this.offset;";

  SVGAnimatedNumberJS get slope() native "return this.slope;";

  SVGAnimatedNumberListJS get tableValues() native "return this.tableValues;";

  SVGAnimatedEnumerationJS get type() native "return this.type;";
}

class SVGCursorElementJS extends SVGElementJS implements SVGCursorElement native "*SVGCursorElement" {

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";
}

class SVGDefsElementJS extends SVGElementJS implements SVGDefsElement native "*SVGDefsElement" {

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGDescElementJS extends SVGElementJS implements SVGDescElement native "*SVGDescElement" {

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGDocumentJS extends DocumentJS implements SVGDocument native "*SVGDocument" {

  SVGSVGElementJS get rootElement() native "return this.rootElement;";

  EventJS createEvent(String eventType) native;
}

class SVGElementJS extends ElementJS implements SVGElement native "*SVGElement" {

  String get id() native "return this.id;";

  void set id(String value) native "this.id = value;";

  SVGSVGElementJS get ownerSVGElement() native "return this.ownerSVGElement;";

  SVGElementJS get viewportElement() native "return this.viewportElement;";

  String get xmlbase() native "return this.xmlbase;";

  void set xmlbase(String value) native "this.xmlbase = value;";
}

class SVGElementInstanceJS implements SVGElementInstance native "*SVGElementInstance" {

  SVGElementInstanceListJS get childNodes() native "return this.childNodes;";

  SVGElementJS get correspondingElement() native "return this.correspondingElement;";

  SVGUseElementJS get correspondingUseElement() native "return this.correspondingUseElement;";

  SVGElementInstanceJS get firstChild() native "return this.firstChild;";

  SVGElementInstanceJS get lastChild() native "return this.lastChild;";

  SVGElementInstanceJS get nextSibling() native "return this.nextSibling;";

  SVGElementInstanceJS get parentNode() native "return this.parentNode;";

  SVGElementInstanceJS get previousSibling() native "return this.previousSibling;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS event) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGElementInstanceListJS implements SVGElementInstanceList native "*SVGElementInstanceList" {

  int get length() native "return this.length;";

  SVGElementInstanceJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGEllipseElementJS extends SVGElementJS implements SVGEllipseElement native "*SVGEllipseElement" {

  SVGAnimatedLengthJS get cx() native "return this.cx;";

  SVGAnimatedLengthJS get cy() native "return this.cy;";

  SVGAnimatedLengthJS get rx() native "return this.rx;";

  SVGAnimatedLengthJS get ry() native "return this.ry;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGExceptionJS implements SVGException native "*SVGException" {

  static final int SVG_INVALID_VALUE_ERR = 1;

  static final int SVG_MATRIX_NOT_INVERTABLE = 2;

  static final int SVG_WRONG_TYPE_ERR = 0;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGExternalResourcesRequiredJS implements SVGExternalResourcesRequired native "*SVGExternalResourcesRequired" {

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGFEBlendElementJS extends SVGElementJS implements SVGFEBlendElement native "*SVGFEBlendElement" {

  static final int SVG_FEBLEND_MODE_DARKEN = 4;

  static final int SVG_FEBLEND_MODE_LIGHTEN = 5;

  static final int SVG_FEBLEND_MODE_MULTIPLY = 2;

  static final int SVG_FEBLEND_MODE_NORMAL = 1;

  static final int SVG_FEBLEND_MODE_SCREEN = 3;

  static final int SVG_FEBLEND_MODE_UNKNOWN = 0;

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedStringJS get in2() native "return this.in2;";

  SVGAnimatedEnumerationJS get mode() native "return this.mode;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEColorMatrixElementJS extends SVGElementJS implements SVGFEColorMatrixElement native "*SVGFEColorMatrixElement" {

  static final int SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3;

  static final int SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4;

  static final int SVG_FECOLORMATRIX_TYPE_MATRIX = 1;

  static final int SVG_FECOLORMATRIX_TYPE_SATURATE = 2;

  static final int SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0;

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedEnumerationJS get type() native "return this.type;";

  SVGAnimatedNumberListJS get values() native "return this.values;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEComponentTransferElementJS extends SVGElementJS implements SVGFEComponentTransferElement native "*SVGFEComponentTransferElement" {

  SVGAnimatedStringJS get in1() native "return this.in1;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFECompositeElementJS extends SVGElementJS implements SVGFECompositeElement native "*SVGFECompositeElement" {

  static final int SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6;

  static final int SVG_FECOMPOSITE_OPERATOR_ATOP = 4;

  static final int SVG_FECOMPOSITE_OPERATOR_IN = 2;

  static final int SVG_FECOMPOSITE_OPERATOR_OUT = 3;

  static final int SVG_FECOMPOSITE_OPERATOR_OVER = 1;

  static final int SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0;

  static final int SVG_FECOMPOSITE_OPERATOR_XOR = 5;

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedStringJS get in2() native "return this.in2;";

  SVGAnimatedNumberJS get k1() native "return this.k1;";

  SVGAnimatedNumberJS get k2() native "return this.k2;";

  SVGAnimatedNumberJS get k3() native "return this.k3;";

  SVGAnimatedNumberJS get k4() native "return this.k4;";

  SVGAnimatedEnumerationJS get operator() native "return this.operator;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEConvolveMatrixElementJS extends SVGElementJS implements SVGFEConvolveMatrixElement native "*SVGFEConvolveMatrixElement" {

  static final int SVG_EDGEMODE_DUPLICATE = 1;

  static final int SVG_EDGEMODE_NONE = 3;

  static final int SVG_EDGEMODE_UNKNOWN = 0;

  static final int SVG_EDGEMODE_WRAP = 2;

  SVGAnimatedNumberJS get bias() native "return this.bias;";

  SVGAnimatedNumberJS get divisor() native "return this.divisor;";

  SVGAnimatedEnumerationJS get edgeMode() native "return this.edgeMode;";

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedNumberListJS get kernelMatrix() native "return this.kernelMatrix;";

  SVGAnimatedNumberJS get kernelUnitLengthX() native "return this.kernelUnitLengthX;";

  SVGAnimatedNumberJS get kernelUnitLengthY() native "return this.kernelUnitLengthY;";

  SVGAnimatedIntegerJS get orderX() native "return this.orderX;";

  SVGAnimatedIntegerJS get orderY() native "return this.orderY;";

  SVGAnimatedBooleanJS get preserveAlpha() native "return this.preserveAlpha;";

  SVGAnimatedIntegerJS get targetX() native "return this.targetX;";

  SVGAnimatedIntegerJS get targetY() native "return this.targetY;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEDiffuseLightingElementJS extends SVGElementJS implements SVGFEDiffuseLightingElement native "*SVGFEDiffuseLightingElement" {

  SVGAnimatedNumberJS get diffuseConstant() native "return this.diffuseConstant;";

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedNumberJS get kernelUnitLengthX() native "return this.kernelUnitLengthX;";

  SVGAnimatedNumberJS get kernelUnitLengthY() native "return this.kernelUnitLengthY;";

  SVGAnimatedNumberJS get surfaceScale() native "return this.surfaceScale;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEDisplacementMapElementJS extends SVGElementJS implements SVGFEDisplacementMapElement native "*SVGFEDisplacementMapElement" {

  static final int SVG_CHANNEL_A = 4;

  static final int SVG_CHANNEL_B = 3;

  static final int SVG_CHANNEL_G = 2;

  static final int SVG_CHANNEL_R = 1;

  static final int SVG_CHANNEL_UNKNOWN = 0;

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedStringJS get in2() native "return this.in2;";

  SVGAnimatedNumberJS get scale() native "return this.scale;";

  SVGAnimatedEnumerationJS get xChannelSelector() native "return this.xChannelSelector;";

  SVGAnimatedEnumerationJS get yChannelSelector() native "return this.yChannelSelector;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEDistantLightElementJS extends SVGElementJS implements SVGFEDistantLightElement native "*SVGFEDistantLightElement" {

  SVGAnimatedNumberJS get azimuth() native "return this.azimuth;";

  SVGAnimatedNumberJS get elevation() native "return this.elevation;";
}

class SVGFEDropShadowElementJS extends SVGElementJS implements SVGFEDropShadowElement native "*SVGFEDropShadowElement" {

  SVGAnimatedNumberJS get dx() native "return this.dx;";

  SVGAnimatedNumberJS get dy() native "return this.dy;";

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedNumberJS get stdDeviationX() native "return this.stdDeviationX;";

  SVGAnimatedNumberJS get stdDeviationY() native "return this.stdDeviationY;";

  void setStdDeviation(num stdDeviationX, num stdDeviationY) native;

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEFloodElementJS extends SVGElementJS implements SVGFEFloodElement native "*SVGFEFloodElement" {

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEFuncAElementJS extends SVGComponentTransferFunctionElementJS implements SVGFEFuncAElement native "*SVGFEFuncAElement" {
}

class SVGFEFuncBElementJS extends SVGComponentTransferFunctionElementJS implements SVGFEFuncBElement native "*SVGFEFuncBElement" {
}

class SVGFEFuncGElementJS extends SVGComponentTransferFunctionElementJS implements SVGFEFuncGElement native "*SVGFEFuncGElement" {
}

class SVGFEFuncRElementJS extends SVGComponentTransferFunctionElementJS implements SVGFEFuncRElement native "*SVGFEFuncRElement" {
}

class SVGFEGaussianBlurElementJS extends SVGElementJS implements SVGFEGaussianBlurElement native "*SVGFEGaussianBlurElement" {

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedNumberJS get stdDeviationX() native "return this.stdDeviationX;";

  SVGAnimatedNumberJS get stdDeviationY() native "return this.stdDeviationY;";

  void setStdDeviation(num stdDeviationX, num stdDeviationY) native;

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEImageElementJS extends SVGElementJS implements SVGFEImageElement native "*SVGFEImageElement" {

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEMergeElementJS extends SVGElementJS implements SVGFEMergeElement native "*SVGFEMergeElement" {

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEMergeNodeElementJS extends SVGElementJS implements SVGFEMergeNodeElement native "*SVGFEMergeNodeElement" {

  SVGAnimatedStringJS get in1() native "return this.in1;";
}

class SVGFEMorphologyElementJS extends SVGElementJS implements SVGFEMorphologyElement native "*SVGFEMorphologyElement" {

  static final int SVG_MORPHOLOGY_OPERATOR_DILATE = 2;

  static final int SVG_MORPHOLOGY_OPERATOR_ERODE = 1;

  static final int SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0;

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedEnumerationJS get operator() native "return this.operator;";

  SVGAnimatedNumberJS get radiusX() native "return this.radiusX;";

  SVGAnimatedNumberJS get radiusY() native "return this.radiusY;";

  void setRadius(num radiusX, num radiusY) native;

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEOffsetElementJS extends SVGElementJS implements SVGFEOffsetElement native "*SVGFEOffsetElement" {

  SVGAnimatedNumberJS get dx() native "return this.dx;";

  SVGAnimatedNumberJS get dy() native "return this.dy;";

  SVGAnimatedStringJS get in1() native "return this.in1;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFEPointLightElementJS extends SVGElementJS implements SVGFEPointLightElement native "*SVGFEPointLightElement" {

  SVGAnimatedNumberJS get x() native "return this.x;";

  SVGAnimatedNumberJS get y() native "return this.y;";

  SVGAnimatedNumberJS get z() native "return this.z;";
}

class SVGFESpecularLightingElementJS extends SVGElementJS implements SVGFESpecularLightingElement native "*SVGFESpecularLightingElement" {

  SVGAnimatedStringJS get in1() native "return this.in1;";

  SVGAnimatedNumberJS get specularConstant() native "return this.specularConstant;";

  SVGAnimatedNumberJS get specularExponent() native "return this.specularExponent;";

  SVGAnimatedNumberJS get surfaceScale() native "return this.surfaceScale;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFESpotLightElementJS extends SVGElementJS implements SVGFESpotLightElement native "*SVGFESpotLightElement" {

  SVGAnimatedNumberJS get limitingConeAngle() native "return this.limitingConeAngle;";

  SVGAnimatedNumberJS get pointsAtX() native "return this.pointsAtX;";

  SVGAnimatedNumberJS get pointsAtY() native "return this.pointsAtY;";

  SVGAnimatedNumberJS get pointsAtZ() native "return this.pointsAtZ;";

  SVGAnimatedNumberJS get specularExponent() native "return this.specularExponent;";

  SVGAnimatedNumberJS get x() native "return this.x;";

  SVGAnimatedNumberJS get y() native "return this.y;";

  SVGAnimatedNumberJS get z() native "return this.z;";
}

class SVGFETileElementJS extends SVGElementJS implements SVGFETileElement native "*SVGFETileElement" {

  SVGAnimatedStringJS get in1() native "return this.in1;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFETurbulenceElementJS extends SVGElementJS implements SVGFETurbulenceElement native "*SVGFETurbulenceElement" {

  static final int SVG_STITCHTYPE_NOSTITCH = 2;

  static final int SVG_STITCHTYPE_STITCH = 1;

  static final int SVG_STITCHTYPE_UNKNOWN = 0;

  static final int SVG_TURBULENCE_TYPE_FRACTALNOISE = 1;

  static final int SVG_TURBULENCE_TYPE_TURBULENCE = 2;

  static final int SVG_TURBULENCE_TYPE_UNKNOWN = 0;

  SVGAnimatedNumberJS get baseFrequencyX() native "return this.baseFrequencyX;";

  SVGAnimatedNumberJS get baseFrequencyY() native "return this.baseFrequencyY;";

  SVGAnimatedIntegerJS get numOctaves() native "return this.numOctaves;";

  SVGAnimatedNumberJS get seed() native "return this.seed;";

  SVGAnimatedEnumerationJS get stitchTiles() native "return this.stitchTiles;";

  SVGAnimatedEnumerationJS get type() native "return this.type;";

  // From SVGFilterPrimitiveStandardAttributes

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFilterElementJS extends SVGElementJS implements SVGFilterElement native "*SVGFilterElement" {

  SVGAnimatedIntegerJS get filterResX() native "return this.filterResX;";

  SVGAnimatedIntegerJS get filterResY() native "return this.filterResY;";

  SVGAnimatedEnumerationJS get filterUnits() native "return this.filterUnits;";

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedEnumerationJS get primitiveUnits() native "return this.primitiveUnits;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  void setFilterRes(int filterResX, int filterResY) native;

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGFilterPrimitiveStandardAttributesJS extends SVGStylableJS implements SVGFilterPrimitiveStandardAttributes native "*SVGFilterPrimitiveStandardAttributes" {

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedStringJS get result() native "return this.result;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";
}

class SVGFitToViewBoxJS implements SVGFitToViewBox native "*SVGFitToViewBox" {

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGFontElementJS extends SVGElementJS implements SVGFontElement native "*SVGFontElement" {
}

class SVGFontFaceElementJS extends SVGElementJS implements SVGFontFaceElement native "*SVGFontFaceElement" {
}

class SVGFontFaceFormatElementJS extends SVGElementJS implements SVGFontFaceFormatElement native "*SVGFontFaceFormatElement" {
}

class SVGFontFaceNameElementJS extends SVGElementJS implements SVGFontFaceNameElement native "*SVGFontFaceNameElement" {
}

class SVGFontFaceSrcElementJS extends SVGElementJS implements SVGFontFaceSrcElement native "*SVGFontFaceSrcElement" {
}

class SVGFontFaceUriElementJS extends SVGElementJS implements SVGFontFaceUriElement native "*SVGFontFaceUriElement" {
}

class SVGForeignObjectElementJS extends SVGElementJS implements SVGForeignObjectElement native "*SVGForeignObjectElement" {

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGGElementJS extends SVGElementJS implements SVGGElement native "*SVGGElement" {

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGGlyphElementJS extends SVGElementJS implements SVGGlyphElement native "*SVGGlyphElement" {
}

class SVGGlyphRefElementJS extends SVGElementJS implements SVGGlyphRefElement native "*SVGGlyphRefElement" {

  num get dx() native "return this.dx;";

  void set dx(num value) native "this.dx = value;";

  num get dy() native "return this.dy;";

  void set dy(num value) native "this.dy = value;";

  String get format() native "return this.format;";

  void set format(String value) native "this.format = value;";

  String get glyphRef() native "return this.glyphRef;";

  void set glyphRef(String value) native "this.glyphRef = value;";

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGGradientElementJS extends SVGElementJS implements SVGGradientElement native "*SVGGradientElement" {

  static final int SVG_SPREADMETHOD_PAD = 1;

  static final int SVG_SPREADMETHOD_REFLECT = 2;

  static final int SVG_SPREADMETHOD_REPEAT = 3;

  static final int SVG_SPREADMETHOD_UNKNOWN = 0;

  SVGAnimatedTransformListJS get gradientTransform() native "return this.gradientTransform;";

  SVGAnimatedEnumerationJS get gradientUnits() native "return this.gradientUnits;";

  SVGAnimatedEnumerationJS get spreadMethod() native "return this.spreadMethod;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGHKernElementJS extends SVGElementJS implements SVGHKernElement native "*SVGHKernElement" {
}

class SVGImageElementJS extends SVGElementJS implements SVGImageElement native "*SVGImageElement" {

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGLangSpaceJS implements SVGLangSpace native "*SVGLangSpace" {

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGLengthJS implements SVGLength native "*SVGLength" {

  static final int SVG_LENGTHTYPE_CM = 6;

  static final int SVG_LENGTHTYPE_EMS = 3;

  static final int SVG_LENGTHTYPE_EXS = 4;

  static final int SVG_LENGTHTYPE_IN = 8;

  static final int SVG_LENGTHTYPE_MM = 7;

  static final int SVG_LENGTHTYPE_NUMBER = 1;

  static final int SVG_LENGTHTYPE_PC = 10;

  static final int SVG_LENGTHTYPE_PERCENTAGE = 2;

  static final int SVG_LENGTHTYPE_PT = 9;

  static final int SVG_LENGTHTYPE_PX = 5;

  static final int SVG_LENGTHTYPE_UNKNOWN = 0;

  int get unitType() native "return this.unitType;";

  num get value() native "return this.value;";

  void set value(num value) native "this.value = value;";

  String get valueAsString() native "return this.valueAsString;";

  void set valueAsString(String value) native "this.valueAsString = value;";

  num get valueInSpecifiedUnits() native "return this.valueInSpecifiedUnits;";

  void set valueInSpecifiedUnits(num value) native "this.valueInSpecifiedUnits = value;";

  void convertToSpecifiedUnits(int unitType) native;

  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGLengthListJS implements SVGLengthList native "*SVGLengthList" {

  int get numberOfItems() native "return this.numberOfItems;";

  SVGLengthJS appendItem(SVGLengthJS item) native;

  void clear() native;

  SVGLengthJS getItem(int index) native;

  SVGLengthJS initialize(SVGLengthJS item) native;

  SVGLengthJS insertItemBefore(SVGLengthJS item, int index) native;

  SVGLengthJS removeItem(int index) native;

  SVGLengthJS replaceItem(SVGLengthJS item, int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGLineElementJS extends SVGElementJS implements SVGLineElement native "*SVGLineElement" {

  SVGAnimatedLengthJS get x1() native "return this.x1;";

  SVGAnimatedLengthJS get x2() native "return this.x2;";

  SVGAnimatedLengthJS get y1() native "return this.y1;";

  SVGAnimatedLengthJS get y2() native "return this.y2;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGLinearGradientElementJS extends SVGGradientElementJS implements SVGLinearGradientElement native "*SVGLinearGradientElement" {

  SVGAnimatedLengthJS get x1() native "return this.x1;";

  SVGAnimatedLengthJS get x2() native "return this.x2;";

  SVGAnimatedLengthJS get y1() native "return this.y1;";

  SVGAnimatedLengthJS get y2() native "return this.y2;";
}

class SVGLocatableJS implements SVGLocatable native "*SVGLocatable" {

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGMPathElementJS extends SVGElementJS implements SVGMPathElement native "*SVGMPathElement" {

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";
}

class SVGMarkerElementJS extends SVGElementJS implements SVGMarkerElement native "*SVGMarkerElement" {

  static final int SVG_MARKERUNITS_STROKEWIDTH = 2;

  static final int SVG_MARKERUNITS_UNKNOWN = 0;

  static final int SVG_MARKERUNITS_USERSPACEONUSE = 1;

  static final int SVG_MARKER_ORIENT_ANGLE = 2;

  static final int SVG_MARKER_ORIENT_AUTO = 1;

  static final int SVG_MARKER_ORIENT_UNKNOWN = 0;

  SVGAnimatedLengthJS get markerHeight() native "return this.markerHeight;";

  SVGAnimatedEnumerationJS get markerUnits() native "return this.markerUnits;";

  SVGAnimatedLengthJS get markerWidth() native "return this.markerWidth;";

  SVGAnimatedAngleJS get orientAngle() native "return this.orientAngle;";

  SVGAnimatedEnumerationJS get orientType() native "return this.orientType;";

  SVGAnimatedLengthJS get refX() native "return this.refX;";

  SVGAnimatedLengthJS get refY() native "return this.refY;";

  void setOrientToAngle(SVGAngleJS angle) native;

  void setOrientToAuto() native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGFitToViewBox

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";
}

class SVGMaskElementJS extends SVGElementJS implements SVGMaskElement native "*SVGMaskElement" {

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedEnumerationJS get maskContentUnits() native "return this.maskContentUnits;";

  SVGAnimatedEnumerationJS get maskUnits() native "return this.maskUnits;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGMatrixJS implements SVGMatrix native "*SVGMatrix" {

  num get a() native "return this.a;";

  void set a(num value) native "this.a = value;";

  num get b() native "return this.b;";

  void set b(num value) native "this.b = value;";

  num get c() native "return this.c;";

  void set c(num value) native "this.c = value;";

  num get d() native "return this.d;";

  void set d(num value) native "this.d = value;";

  num get e() native "return this.e;";

  void set e(num value) native "this.e = value;";

  num get f() native "return this.f;";

  void set f(num value) native "this.f = value;";

  SVGMatrixJS flipX() native;

  SVGMatrixJS flipY() native;

  SVGMatrixJS inverse() native;

  SVGMatrixJS multiply(SVGMatrixJS secondMatrix) native;

  SVGMatrixJS rotate(num angle) native;

  SVGMatrixJS rotateFromVector(num x, num y) native;

  SVGMatrixJS scale(num scaleFactor) native;

  SVGMatrixJS scaleNonUniform(num scaleFactorX, num scaleFactorY) native;

  SVGMatrixJS skewX(num angle) native;

  SVGMatrixJS skewY(num angle) native;

  SVGMatrixJS translate(num x, num y) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGMetadataElementJS extends SVGElementJS implements SVGMetadataElement native "*SVGMetadataElement" {
}

class SVGMissingGlyphElementJS extends SVGElementJS implements SVGMissingGlyphElement native "*SVGMissingGlyphElement" {
}

class SVGNumberJS implements SVGNumber native "*SVGNumber" {

  num get value() native "return this.value;";

  void set value(num value) native "this.value = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGNumberListJS implements SVGNumberList native "*SVGNumberList" {

  int get numberOfItems() native "return this.numberOfItems;";

  SVGNumberJS appendItem(SVGNumberJS item) native;

  void clear() native;

  SVGNumberJS getItem(int index) native;

  SVGNumberJS initialize(SVGNumberJS item) native;

  SVGNumberJS insertItemBefore(SVGNumberJS item, int index) native;

  SVGNumberJS removeItem(int index) native;

  SVGNumberJS replaceItem(SVGNumberJS item, int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGPaintJS extends SVGColorJS implements SVGPaint native "*SVGPaint" {

  static final int SVG_PAINTTYPE_CURRENTCOLOR = 102;

  static final int SVG_PAINTTYPE_NONE = 101;

  static final int SVG_PAINTTYPE_RGBCOLOR = 1;

  static final int SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_PAINTTYPE_UNKNOWN = 0;

  static final int SVG_PAINTTYPE_URI = 107;

  static final int SVG_PAINTTYPE_URI_CURRENTCOLOR = 104;

  static final int SVG_PAINTTYPE_URI_NONE = 103;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR = 105;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106;

  int get paintType() native "return this.paintType;";

  String get uri() native "return this.uri;";

  void setPaint(int paintType, String uri, String rgbColor, String iccColor) native;

  void setUri(String uri) native;
}

class SVGPathElementJS extends SVGElementJS implements SVGPathElement native "*SVGPathElement" {

  SVGPathSegListJS get animatedNormalizedPathSegList() native "return this.animatedNormalizedPathSegList;";

  SVGPathSegListJS get animatedPathSegList() native "return this.animatedPathSegList;";

  SVGPathSegListJS get normalizedPathSegList() native "return this.normalizedPathSegList;";

  SVGAnimatedNumberJS get pathLength() native "return this.pathLength;";

  SVGPathSegListJS get pathSegList() native "return this.pathSegList;";

  SVGPathSegArcAbsJS createSVGPathSegArcAbs(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag) native;

  SVGPathSegArcRelJS createSVGPathSegArcRel(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag) native;

  SVGPathSegClosePathJS createSVGPathSegClosePath() native;

  SVGPathSegCurvetoCubicAbsJS createSVGPathSegCurvetoCubicAbs(num x, num y, num x1, num y1, num x2, num y2) native;

  SVGPathSegCurvetoCubicRelJS createSVGPathSegCurvetoCubicRel(num x, num y, num x1, num y1, num x2, num y2) native;

  SVGPathSegCurvetoCubicSmoothAbsJS createSVGPathSegCurvetoCubicSmoothAbs(num x, num y, num x2, num y2) native;

  SVGPathSegCurvetoCubicSmoothRelJS createSVGPathSegCurvetoCubicSmoothRel(num x, num y, num x2, num y2) native;

  SVGPathSegCurvetoQuadraticAbsJS createSVGPathSegCurvetoQuadraticAbs(num x, num y, num x1, num y1) native;

  SVGPathSegCurvetoQuadraticRelJS createSVGPathSegCurvetoQuadraticRel(num x, num y, num x1, num y1) native;

  SVGPathSegCurvetoQuadraticSmoothAbsJS createSVGPathSegCurvetoQuadraticSmoothAbs(num x, num y) native;

  SVGPathSegCurvetoQuadraticSmoothRelJS createSVGPathSegCurvetoQuadraticSmoothRel(num x, num y) native;

  SVGPathSegLinetoAbsJS createSVGPathSegLinetoAbs(num x, num y) native;

  SVGPathSegLinetoHorizontalAbsJS createSVGPathSegLinetoHorizontalAbs(num x) native;

  SVGPathSegLinetoHorizontalRelJS createSVGPathSegLinetoHorizontalRel(num x) native;

  SVGPathSegLinetoRelJS createSVGPathSegLinetoRel(num x, num y) native;

  SVGPathSegLinetoVerticalAbsJS createSVGPathSegLinetoVerticalAbs(num y) native;

  SVGPathSegLinetoVerticalRelJS createSVGPathSegLinetoVerticalRel(num y) native;

  SVGPathSegMovetoAbsJS createSVGPathSegMovetoAbs(num x, num y) native;

  SVGPathSegMovetoRelJS createSVGPathSegMovetoRel(num x, num y) native;

  int getPathSegAtLength(num distance) native;

  SVGPointJS getPointAtLength(num distance) native;

  num getTotalLength() native;

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGPathSegJS implements SVGPathSeg native "*SVGPathSeg" {

  static final int PATHSEG_ARC_ABS = 10;

  static final int PATHSEG_ARC_REL = 11;

  static final int PATHSEG_CLOSEPATH = 1;

  static final int PATHSEG_CURVETO_CUBIC_ABS = 6;

  static final int PATHSEG_CURVETO_CUBIC_REL = 7;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17;

  static final int PATHSEG_CURVETO_QUADRATIC_ABS = 8;

  static final int PATHSEG_CURVETO_QUADRATIC_REL = 9;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19;

  static final int PATHSEG_LINETO_ABS = 4;

  static final int PATHSEG_LINETO_HORIZONTAL_ABS = 12;

  static final int PATHSEG_LINETO_HORIZONTAL_REL = 13;

  static final int PATHSEG_LINETO_REL = 5;

  static final int PATHSEG_LINETO_VERTICAL_ABS = 14;

  static final int PATHSEG_LINETO_VERTICAL_REL = 15;

  static final int PATHSEG_MOVETO_ABS = 2;

  static final int PATHSEG_MOVETO_REL = 3;

  static final int PATHSEG_UNKNOWN = 0;

  int get pathSegType() native "return this.pathSegType;";

  String get pathSegTypeAsLetter() native "return this.pathSegTypeAsLetter;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGPathSegArcAbsJS extends SVGPathSegJS implements SVGPathSegArcAbs native "*SVGPathSegArcAbs" {

  num get angle() native "return this.angle;";

  void set angle(num value) native "this.angle = value;";

  bool get largeArcFlag() native "return this.largeArcFlag;";

  void set largeArcFlag(bool value) native "this.largeArcFlag = value;";

  num get r1() native "return this.r1;";

  void set r1(num value) native "this.r1 = value;";

  num get r2() native "return this.r2;";

  void set r2(num value) native "this.r2 = value;";

  bool get sweepFlag() native "return this.sweepFlag;";

  void set sweepFlag(bool value) native "this.sweepFlag = value;";

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegArcRelJS extends SVGPathSegJS implements SVGPathSegArcRel native "*SVGPathSegArcRel" {

  num get angle() native "return this.angle;";

  void set angle(num value) native "this.angle = value;";

  bool get largeArcFlag() native "return this.largeArcFlag;";

  void set largeArcFlag(bool value) native "this.largeArcFlag = value;";

  num get r1() native "return this.r1;";

  void set r1(num value) native "this.r1 = value;";

  num get r2() native "return this.r2;";

  void set r2(num value) native "this.r2 = value;";

  bool get sweepFlag() native "return this.sweepFlag;";

  void set sweepFlag(bool value) native "this.sweepFlag = value;";

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegClosePathJS extends SVGPathSegJS implements SVGPathSegClosePath native "*SVGPathSegClosePath" {
}

class SVGPathSegCurvetoCubicAbsJS extends SVGPathSegJS implements SVGPathSegCurvetoCubicAbs native "*SVGPathSegCurvetoCubicAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get x1() native "return this.x1;";

  void set x1(num value) native "this.x1 = value;";

  num get x2() native "return this.x2;";

  void set x2(num value) native "this.x2 = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  num get y1() native "return this.y1;";

  void set y1(num value) native "this.y1 = value;";

  num get y2() native "return this.y2;";

  void set y2(num value) native "this.y2 = value;";
}

class SVGPathSegCurvetoCubicRelJS extends SVGPathSegJS implements SVGPathSegCurvetoCubicRel native "*SVGPathSegCurvetoCubicRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get x1() native "return this.x1;";

  void set x1(num value) native "this.x1 = value;";

  num get x2() native "return this.x2;";

  void set x2(num value) native "this.x2 = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  num get y1() native "return this.y1;";

  void set y1(num value) native "this.y1 = value;";

  num get y2() native "return this.y2;";

  void set y2(num value) native "this.y2 = value;";
}

class SVGPathSegCurvetoCubicSmoothAbsJS extends SVGPathSegJS implements SVGPathSegCurvetoCubicSmoothAbs native "*SVGPathSegCurvetoCubicSmoothAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get x2() native "return this.x2;";

  void set x2(num value) native "this.x2 = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  num get y2() native "return this.y2;";

  void set y2(num value) native "this.y2 = value;";
}

class SVGPathSegCurvetoCubicSmoothRelJS extends SVGPathSegJS implements SVGPathSegCurvetoCubicSmoothRel native "*SVGPathSegCurvetoCubicSmoothRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get x2() native "return this.x2;";

  void set x2(num value) native "this.x2 = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  num get y2() native "return this.y2;";

  void set y2(num value) native "this.y2 = value;";
}

class SVGPathSegCurvetoQuadraticAbsJS extends SVGPathSegJS implements SVGPathSegCurvetoQuadraticAbs native "*SVGPathSegCurvetoQuadraticAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get x1() native "return this.x1;";

  void set x1(num value) native "this.x1 = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  num get y1() native "return this.y1;";

  void set y1(num value) native "this.y1 = value;";
}

class SVGPathSegCurvetoQuadraticRelJS extends SVGPathSegJS implements SVGPathSegCurvetoQuadraticRel native "*SVGPathSegCurvetoQuadraticRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get x1() native "return this.x1;";

  void set x1(num value) native "this.x1 = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  num get y1() native "return this.y1;";

  void set y1(num value) native "this.y1 = value;";
}

class SVGPathSegCurvetoQuadraticSmoothAbsJS extends SVGPathSegJS implements SVGPathSegCurvetoQuadraticSmoothAbs native "*SVGPathSegCurvetoQuadraticSmoothAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegCurvetoQuadraticSmoothRelJS extends SVGPathSegJS implements SVGPathSegCurvetoQuadraticSmoothRel native "*SVGPathSegCurvetoQuadraticSmoothRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegLinetoAbsJS extends SVGPathSegJS implements SVGPathSegLinetoAbs native "*SVGPathSegLinetoAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegLinetoHorizontalAbsJS extends SVGPathSegJS implements SVGPathSegLinetoHorizontalAbs native "*SVGPathSegLinetoHorizontalAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";
}

class SVGPathSegLinetoHorizontalRelJS extends SVGPathSegJS implements SVGPathSegLinetoHorizontalRel native "*SVGPathSegLinetoHorizontalRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";
}

class SVGPathSegLinetoRelJS extends SVGPathSegJS implements SVGPathSegLinetoRel native "*SVGPathSegLinetoRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegLinetoVerticalAbsJS extends SVGPathSegJS implements SVGPathSegLinetoVerticalAbs native "*SVGPathSegLinetoVerticalAbs" {

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegLinetoVerticalRelJS extends SVGPathSegJS implements SVGPathSegLinetoVerticalRel native "*SVGPathSegLinetoVerticalRel" {

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegListJS implements SVGPathSegList native "*SVGPathSegList" {

  int get numberOfItems() native "return this.numberOfItems;";

  SVGPathSegJS appendItem(SVGPathSegJS newItem) native;

  void clear() native;

  SVGPathSegJS getItem(int index) native;

  SVGPathSegJS initialize(SVGPathSegJS newItem) native;

  SVGPathSegJS insertItemBefore(SVGPathSegJS newItem, int index) native;

  SVGPathSegJS removeItem(int index) native;

  SVGPathSegJS replaceItem(SVGPathSegJS newItem, int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGPathSegMovetoAbsJS extends SVGPathSegJS implements SVGPathSegMovetoAbs native "*SVGPathSegMovetoAbs" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPathSegMovetoRelJS extends SVGPathSegJS implements SVGPathSegMovetoRel native "*SVGPathSegMovetoRel" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";
}

class SVGPatternElementJS extends SVGElementJS implements SVGPatternElement native "*SVGPatternElement" {

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedEnumerationJS get patternContentUnits() native "return this.patternContentUnits;";

  SVGAnimatedTransformListJS get patternTransform() native "return this.patternTransform;";

  SVGAnimatedEnumerationJS get patternUnits() native "return this.patternUnits;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGFitToViewBox

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";
}

class SVGPointJS implements SVGPoint native "*SVGPoint" {

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  SVGPointJS matrixTransform(SVGMatrixJS matrix) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGPointListJS implements SVGPointList native "*SVGPointList" {

  int get numberOfItems() native "return this.numberOfItems;";

  SVGPointJS appendItem(SVGPointJS item) native;

  void clear() native;

  SVGPointJS getItem(int index) native;

  SVGPointJS initialize(SVGPointJS item) native;

  SVGPointJS insertItemBefore(SVGPointJS item, int index) native;

  SVGPointJS removeItem(int index) native;

  SVGPointJS replaceItem(SVGPointJS item, int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGPolygonElementJS extends SVGElementJS implements SVGPolygonElement native "*SVGPolygonElement" {

  SVGPointListJS get animatedPoints() native "return this.animatedPoints;";

  SVGPointListJS get points() native "return this.points;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGPolylineElementJS extends SVGElementJS implements SVGPolylineElement native "*SVGPolylineElement" {

  SVGPointListJS get animatedPoints() native "return this.animatedPoints;";

  SVGPointListJS get points() native "return this.points;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGPreserveAspectRatioJS implements SVGPreserveAspectRatio native "*SVGPreserveAspectRatio" {

  static final int SVG_MEETORSLICE_MEET = 1;

  static final int SVG_MEETORSLICE_SLICE = 2;

  static final int SVG_MEETORSLICE_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_NONE = 1;

  static final int SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMID = 5;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;

  int get align() native "return this.align;";

  void set align(int value) native "this.align = value;";

  int get meetOrSlice() native "return this.meetOrSlice;";

  void set meetOrSlice(int value) native "this.meetOrSlice = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGRadialGradientElementJS extends SVGGradientElementJS implements SVGRadialGradientElement native "*SVGRadialGradientElement" {

  SVGAnimatedLengthJS get cx() native "return this.cx;";

  SVGAnimatedLengthJS get cy() native "return this.cy;";

  SVGAnimatedLengthJS get fx() native "return this.fx;";

  SVGAnimatedLengthJS get fy() native "return this.fy;";

  SVGAnimatedLengthJS get r() native "return this.r;";
}

class SVGRectJS implements SVGRect native "*SVGRect" {

  num get height() native "return this.height;";

  void set height(num value) native "this.height = value;";

  num get width() native "return this.width;";

  void set width(num value) native "this.width = value;";

  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGRectElementJS extends SVGElementJS implements SVGRectElement native "*SVGRectElement" {

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGAnimatedLengthJS get rx() native "return this.rx;";

  SVGAnimatedLengthJS get ry() native "return this.ry;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGRenderingIntentJS implements SVGRenderingIntent native "*SVGRenderingIntent" {

  static final int RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5;

  static final int RENDERING_INTENT_AUTO = 1;

  static final int RENDERING_INTENT_PERCEPTUAL = 2;

  static final int RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3;

  static final int RENDERING_INTENT_SATURATION = 4;

  static final int RENDERING_INTENT_UNKNOWN = 0;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGSVGElementJS extends SVGElementJS implements SVGSVGElement native "*SVGSVGElement" {

  String get contentScriptType() native "return this.contentScriptType;";

  void set contentScriptType(String value) native "this.contentScriptType = value;";

  String get contentStyleType() native "return this.contentStyleType;";

  void set contentStyleType(String value) native "this.contentStyleType = value;";

  num get currentScale() native "return this.currentScale;";

  void set currentScale(num value) native "this.currentScale = value;";

  SVGPointJS get currentTranslate() native "return this.currentTranslate;";

  SVGAnimatedLengthJS get height() native "return this.height;";

  num get pixelUnitToMillimeterX() native "return this.pixelUnitToMillimeterX;";

  num get pixelUnitToMillimeterY() native "return this.pixelUnitToMillimeterY;";

  num get screenPixelToMillimeterX() native "return this.screenPixelToMillimeterX;";

  num get screenPixelToMillimeterY() native "return this.screenPixelToMillimeterY;";

  bool get useCurrentView() native "return this.useCurrentView;";

  void set useCurrentView(bool value) native "this.useCurrentView = value;";

  SVGRectJS get viewport() native "return this.viewport;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  bool animationsPaused() native;

  bool checkEnclosure(SVGElementJS element, SVGRectJS rect) native;

  bool checkIntersection(SVGElementJS element, SVGRectJS rect) native;

  SVGAngleJS createSVGAngle() native;

  SVGLengthJS createSVGLength() native;

  SVGMatrixJS createSVGMatrix() native;

  SVGNumberJS createSVGNumber() native;

  SVGPointJS createSVGPoint() native;

  SVGRectJS createSVGRect() native;

  SVGTransformJS createSVGTransform() native;

  SVGTransformJS createSVGTransformFromMatrix(SVGMatrixJS matrix) native;

  void deselectAll() native;

  void forceRedraw() native;

  num getCurrentTime() native;

  ElementJS getElementById(String elementId) native;

  NodeListJS getEnclosureList(SVGRectJS rect, SVGElementJS referenceElement) native;

  NodeListJS getIntersectionList(SVGRectJS rect, SVGElementJS referenceElement) native;

  void pauseAnimations() native;

  void setCurrentTime(num seconds) native;

  int suspendRedraw(int maxWaitMilliseconds) native;

  void unpauseAnimations() native;

  void unsuspendRedraw(int suspendHandleId) native;

  void unsuspendRedrawAll() native;

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;

  // From SVGFitToViewBox

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";

  // From SVGZoomAndPan

  int get zoomAndPan() native "return this.zoomAndPan;";

  void set zoomAndPan(int value) native "this.zoomAndPan = value;";
}

class SVGScriptElementJS extends SVGElementJS implements SVGScriptElement native "*SVGScriptElement" {

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";
}

class SVGSetElementJS extends SVGAnimationElementJS implements SVGSetElement native "*SVGSetElement" {
}

class SVGStopElementJS extends SVGElementJS implements SVGStopElement native "*SVGStopElement" {

  SVGAnimatedNumberJS get offset() native "return this.offset;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGStringListJS implements SVGStringList native "*SVGStringList" {

  int get numberOfItems() native "return this.numberOfItems;";

  String appendItem(String item) native;

  void clear() native;

  String getItem(int index) native;

  String initialize(String item) native;

  String insertItemBefore(String item, int index) native;

  String removeItem(int index) native;

  String replaceItem(String item, int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGStylableJS implements SVGStylable native "*SVGStylable" {

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGStyleElementJS extends SVGElementJS implements SVGStyleElement native "*SVGStyleElement" {

  String get media() native "return this.media;";

  void set media(String value) native "this.media = value;";

  String get title() native "return this.title;";

  void set title(String value) native "this.title = value;";

  String get type() native "return this.type;";

  void set type(String value) native "this.type = value;";

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";
}

class SVGSwitchElementJS extends SVGElementJS implements SVGSwitchElement native "*SVGSwitchElement" {

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGSymbolElementJS extends SVGElementJS implements SVGSymbolElement native "*SVGSymbolElement" {

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGFitToViewBox

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";
}

class SVGTRefElementJS extends SVGTextPositioningElementJS implements SVGTRefElement native "*SVGTRefElement" {

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";
}

class SVGTSpanElementJS extends SVGTextPositioningElementJS implements SVGTSpanElement native "*SVGTSpanElement" {
}

class SVGTestsJS implements SVGTests native "*SVGTests" {

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGTextContentElementJS extends SVGElementJS implements SVGTextContentElement native "*SVGTextContentElement" {

  static final int LENGTHADJUST_SPACING = 1;

  static final int LENGTHADJUST_SPACINGANDGLYPHS = 2;

  static final int LENGTHADJUST_UNKNOWN = 0;

  SVGAnimatedEnumerationJS get lengthAdjust() native "return this.lengthAdjust;";

  SVGAnimatedLengthJS get textLength() native "return this.textLength;";

  int getCharNumAtPosition(SVGPointJS point) native;

  num getComputedTextLength() native;

  SVGPointJS getEndPositionOfChar(int offset) native;

  SVGRectJS getExtentOfChar(int offset) native;

  int getNumberOfChars() native;

  num getRotationOfChar(int offset) native;

  SVGPointJS getStartPositionOfChar(int offset) native;

  num getSubStringLength(int offset, int length) native;

  void selectSubString(int offset, int length) native;

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGTextElementJS extends SVGTextPositioningElementJS implements SVGTextElement native "*SVGTextElement" {

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGTextPathElementJS extends SVGTextContentElementJS implements SVGTextPathElement native "*SVGTextPathElement" {

  static final int TEXTPATH_METHODTYPE_ALIGN = 1;

  static final int TEXTPATH_METHODTYPE_STRETCH = 2;

  static final int TEXTPATH_METHODTYPE_UNKNOWN = 0;

  static final int TEXTPATH_SPACINGTYPE_AUTO = 1;

  static final int TEXTPATH_SPACINGTYPE_EXACT = 2;

  static final int TEXTPATH_SPACINGTYPE_UNKNOWN = 0;

  SVGAnimatedEnumerationJS get method() native "return this.method;";

  SVGAnimatedEnumerationJS get spacing() native "return this.spacing;";

  SVGAnimatedLengthJS get startOffset() native "return this.startOffset;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";
}

class SVGTextPositioningElementJS extends SVGTextContentElementJS implements SVGTextPositioningElement native "*SVGTextPositioningElement" {

  SVGAnimatedLengthListJS get dx() native "return this.dx;";

  SVGAnimatedLengthListJS get dy() native "return this.dy;";

  SVGAnimatedNumberListJS get rotate() native "return this.rotate;";

  SVGAnimatedLengthListJS get x() native "return this.x;";

  SVGAnimatedLengthListJS get y() native "return this.y;";
}

class SVGTitleElementJS extends SVGElementJS implements SVGTitleElement native "*SVGTitleElement" {

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;
}

class SVGTransformJS implements SVGTransform native "*SVGTransform" {

  static final int SVG_TRANSFORM_MATRIX = 1;

  static final int SVG_TRANSFORM_ROTATE = 4;

  static final int SVG_TRANSFORM_SCALE = 3;

  static final int SVG_TRANSFORM_SKEWX = 5;

  static final int SVG_TRANSFORM_SKEWY = 6;

  static final int SVG_TRANSFORM_TRANSLATE = 2;

  static final int SVG_TRANSFORM_UNKNOWN = 0;

  num get angle() native "return this.angle;";

  SVGMatrixJS get matrix() native "return this.matrix;";

  int get type() native "return this.type;";

  void setMatrix(SVGMatrixJS matrix) native;

  void setRotate(num angle, num cx, num cy) native;

  void setScale(num sx, num sy) native;

  void setSkewX(num angle) native;

  void setSkewY(num angle) native;

  void setTranslate(num tx, num ty) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGTransformListJS implements SVGTransformList native "*SVGTransformList" {

  int get numberOfItems() native "return this.numberOfItems;";

  SVGTransformJS appendItem(SVGTransformJS item) native;

  void clear() native;

  SVGTransformJS consolidate() native;

  SVGTransformJS createSVGTransformFromMatrix(SVGMatrixJS matrix) native;

  SVGTransformJS getItem(int index) native;

  SVGTransformJS initialize(SVGTransformJS item) native;

  SVGTransformJS insertItemBefore(SVGTransformJS item, int index) native;

  SVGTransformJS removeItem(int index) native;

  SVGTransformJS replaceItem(SVGTransformJS item, int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGTransformableJS extends SVGLocatableJS implements SVGTransformable native "*SVGTransformable" {

  SVGAnimatedTransformListJS get transform() native "return this.transform;";
}

class SVGURIReferenceJS implements SVGURIReference native "*SVGURIReference" {

  SVGAnimatedStringJS get href() native "return this.href;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGUnitTypesJS implements SVGUnitTypes native "*SVGUnitTypes" {

  static final int SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;

  static final int SVG_UNIT_TYPE_UNKNOWN = 0;

  static final int SVG_UNIT_TYPE_USERSPACEONUSE = 1;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGUseElementJS extends SVGElementJS implements SVGUseElement native "*SVGUseElement" {

  SVGElementInstanceJS get animatedInstanceRoot() native "return this.animatedInstanceRoot;";

  SVGAnimatedLengthJS get height() native "return this.height;";

  SVGElementInstanceJS get instanceRoot() native "return this.instanceRoot;";

  SVGAnimatedLengthJS get width() native "return this.width;";

  SVGAnimatedLengthJS get x() native "return this.x;";

  SVGAnimatedLengthJS get y() native "return this.y;";

  // From SVGURIReference

  SVGAnimatedStringJS get href() native "return this.href;";

  // From SVGTests

  SVGStringListJS get requiredExtensions() native "return this.requiredExtensions;";

  SVGStringListJS get requiredFeatures() native "return this.requiredFeatures;";

  SVGStringListJS get systemLanguage() native "return this.systemLanguage;";

  bool hasExtension(String extension) native;

  // From SVGLangSpace

  String get xmllang() native "return this.xmllang;";

  void set xmllang(String value) native "this.xmllang = value;";

  String get xmlspace() native "return this.xmlspace;";

  void set xmlspace(String value) native "this.xmlspace = value;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGStylable

  SVGAnimatedStringJS get className() native "return this.className;";

  CSSStyleDeclarationJS get style() native "return this.style;";

  CSSValueJS getPresentationAttribute(String name) native;

  // From SVGTransformable

  SVGAnimatedTransformListJS get transform() native "return this.transform;";

  // From SVGLocatable

  SVGElementJS get farthestViewportElement() native "return this.farthestViewportElement;";

  SVGElementJS get nearestViewportElement() native "return this.nearestViewportElement;";

  SVGRectJS getBBox() native;

  SVGMatrixJS getCTM() native;

  SVGMatrixJS getScreenCTM() native;

  SVGMatrixJS getTransformToElement(SVGElementJS element) native;
}

class SVGVKernElementJS extends SVGElementJS implements SVGVKernElement native "*SVGVKernElement" {
}

class SVGViewElementJS extends SVGElementJS implements SVGViewElement native "*SVGViewElement" {

  SVGStringListJS get viewTarget() native "return this.viewTarget;";

  // From SVGExternalResourcesRequired

  SVGAnimatedBooleanJS get externalResourcesRequired() native "return this.externalResourcesRequired;";

  // From SVGFitToViewBox

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";

  // From SVGZoomAndPan

  int get zoomAndPan() native "return this.zoomAndPan;";

  void set zoomAndPan(int value) native "this.zoomAndPan = value;";
}

class SVGViewSpecJS extends SVGZoomAndPanJS implements SVGViewSpec native "*SVGViewSpec" {

  String get preserveAspectRatioString() native "return this.preserveAspectRatioString;";

  SVGTransformListJS get transform() native "return this.transform;";

  String get transformString() native "return this.transformString;";

  String get viewBoxString() native "return this.viewBoxString;";

  SVGElementJS get viewTarget() native "return this.viewTarget;";

  String get viewTargetString() native "return this.viewTargetString;";

  // From SVGFitToViewBox

  SVGAnimatedPreserveAspectRatioJS get preserveAspectRatio() native "return this.preserveAspectRatio;";

  SVGAnimatedRectJS get viewBox() native "return this.viewBox;";
}

class SVGZoomAndPanJS implements SVGZoomAndPan native "*SVGZoomAndPan" {

  static final int SVG_ZOOMANDPAN_DISABLE = 1;

  static final int SVG_ZOOMANDPAN_MAGNIFY = 2;

  static final int SVG_ZOOMANDPAN_UNKNOWN = 0;

  int get zoomAndPan() native "return this.zoomAndPan;";

  void set zoomAndPan(int value) native "this.zoomAndPan = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SVGZoomEventJS extends UIEventJS implements SVGZoomEvent native "*SVGZoomEvent" {

  num get newScale() native "return this.newScale;";

  SVGPointJS get newTranslate() native "return this.newTranslate;";

  num get previousScale() native "return this.previousScale;";

  SVGPointJS get previousTranslate() native "return this.previousTranslate;";

  SVGRectJS get zoomRectScreen() native "return this.zoomRectScreen;";
}

class ScreenJS implements Screen native "*Screen" {

  int get availHeight() native "return this.availHeight;";

  int get availLeft() native "return this.availLeft;";

  int get availTop() native "return this.availTop;";

  int get availWidth() native "return this.availWidth;";

  int get colorDepth() native "return this.colorDepth;";

  int get height() native "return this.height;";

  int get pixelDepth() native "return this.pixelDepth;";

  int get width() native "return this.width;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ScriptProfileJS implements ScriptProfile native "*ScriptProfile" {

  ScriptProfileNodeJS get head() native "return this.head;";

  String get title() native "return this.title;";

  int get uid() native "return this.uid;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class ScriptProfileNodeJS implements ScriptProfileNode native "*ScriptProfileNode" {

  int get callUID() native "return this.callUID;";

  List get children() native "return this.children;";

  String get functionName() native "return this.functionName;";

  int get lineNumber() native "return this.lineNumber;";

  int get numberOfCalls() native "return this.numberOfCalls;";

  num get selfTime() native "return this.selfTime;";

  num get totalTime() native "return this.totalTime;";

  String get url() native "return this.url;";

  bool get visible() native "return this.visible;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SharedWorkerJS extends AbstractWorkerJS implements SharedWorker native "*SharedWorker" {

  MessagePortJS get port() native "return this.port;";
}

class SharedWorkerContextJS extends WorkerContextJS implements SharedWorkerContext native "*SharedWorkerContext" {

  String get name() native "return this.name;";

  EventListener get onconnect() native "return this.onconnect;";

  void set onconnect(EventListener value) native "this.onconnect = value;";
}

class SpeechInputEventJS extends EventJS implements SpeechInputEvent native "*SpeechInputEvent" {

  SpeechInputResultListJS get results() native "return this.results;";
}

class SpeechInputResultJS implements SpeechInputResult native "*SpeechInputResult" {

  num get confidence() native "return this.confidence;";

  String get utterance() native "return this.utterance;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class SpeechInputResultListJS implements SpeechInputResultList native "*SpeechInputResultList" {

  int get length() native "return this.length;";

  SpeechInputResultJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class StorageJS implements Storage native "*Storage" {

  int get length() native "return this.length;";

  void clear() native;

  String getItem(String key) native;

  String key(int index) native;

  void removeItem(String key) native;

  void setItem(String key, String data) native;

  var get dartObjectLocalStorage() native """

    if (this === window.localStorage)
      return window._dartLocalStorageLocalStorage;
    else if (this === window.sessionStorage)
      return window._dartSessionStorageLocalStorage;
    else
      throw new UnsupportedOperationException('Cannot dartObjectLocalStorage for unknown Storage object.');

""" {
    throw new UnsupportedOperationException('');
  }

  void set dartObjectLocalStorage(var value) native """

    if (this === window.localStorage)
      window._dartLocalStorageLocalStorage = value;
    else if (this === window.sessionStorage)
      window._dartSessionStorageLocalStorage = value;
    else
      throw new UnsupportedOperationException('Cannot dartObjectLocalStorage for unknown Storage object.');

""" {
    throw new UnsupportedOperationException('');
  }

  String get typeName() native;
}

class StorageEventJS extends EventJS implements StorageEvent native "*StorageEvent" {

  String get key() native "return this.key;";

  String get newValue() native "return this.newValue;";

  String get oldValue() native "return this.oldValue;";

  StorageJS get storageArea() native "return this.storageArea;";

  String get url() native "return this.url;";

  void initStorageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, String keyArg, String oldValueArg, String newValueArg, String urlArg, StorageJS storageAreaArg) native;
}

class StorageInfoJS implements StorageInfo native "*StorageInfo" {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  void queryUsageAndQuota(int storageType, [StorageInfoUsageCallback usageCallback = null, StorageInfoErrorCallback errorCallback = null]) native;

  void requestQuota(int storageType, int newQuotaInBytes, [StorageInfoQuotaCallback quotaCallback = null, StorageInfoErrorCallback errorCallback = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class StyleMediaJS implements StyleMedia native "*StyleMedia" {

  String get type() native "return this.type;";

  bool matchMedium(String mediaquery) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class StyleSheetJS implements StyleSheet native "*StyleSheet" {

  bool get disabled() native "return this.disabled;";

  void set disabled(bool value) native "this.disabled = value;";

  String get href() native "return this.href;";

  MediaListJS get media() native "return this.media;";

  NodeJS get ownerNode() native "return this.ownerNode;";

  StyleSheetJS get parentStyleSheet() native "return this.parentStyleSheet;";

  String get title() native "return this.title;";

  String get type() native "return this.type;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class StyleSheetListJS implements StyleSheetList native "*StyleSheetList" {

  int get length() native "return this.length;";

  StyleSheetJS operator[](int index) native;

  void operator[]=(int index, StyleSheetJS value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }

  StyleSheetJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TextJS extends CharacterDataJS implements Text native "*Text" {

  String get wholeText() native "return this.wholeText;";

  TextJS replaceWholeText(String content) native;

  TextJS splitText(int offset) native;
}

class TextEventJS extends UIEventJS implements TextEvent native "*TextEvent" {

  String get data() native "return this.data;";

  void initTextEvent(String typeArg, bool canBubbleArg, bool cancelableArg, DOMWindowJS viewArg, String dataArg) native;
}

class TextMetricsJS implements TextMetrics native "*TextMetrics" {

  num get width() native "return this.width;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TextTrackJS implements TextTrack native "*TextTrack" {

  static final int DISABLED = 0;

  static final int HIDDEN = 1;

  static final int SHOWING = 2;

  TextTrackCueListJS get activeCues() native "return this.activeCues;";

  TextTrackCueListJS get cues() native "return this.cues;";

  String get kind() native "return this.kind;";

  String get label() native "return this.label;";

  String get language() native "return this.language;";

  int get mode() native "return this.mode;";

  void set mode(int value) native "this.mode = value;";

  EventListener get oncuechange() native "return this.oncuechange;";

  void set oncuechange(EventListener value) native "this.oncuechange = value;";

  void addCue(TextTrackCueJS cue) native;

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void removeCue(TextTrackCueJS cue) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TextTrackCueJS implements TextTrackCue native "*TextTrackCue" {

  String get alignment() native "return this.alignment;";

  void set alignment(String value) native "this.alignment = value;";

  String get direction() native "return this.direction;";

  void set direction(String value) native "this.direction = value;";

  num get endTime() native "return this.endTime;";

  void set endTime(num value) native "this.endTime = value;";

  String get id() native "return this.id;";

  void set id(String value) native "this.id = value;";

  int get linePosition() native "return this.linePosition;";

  void set linePosition(int value) native "this.linePosition = value;";

  EventListener get onenter() native "return this.onenter;";

  void set onenter(EventListener value) native "this.onenter = value;";

  EventListener get onexit() native "return this.onexit;";

  void set onexit(EventListener value) native "this.onexit = value;";

  bool get pauseOnExit() native "return this.pauseOnExit;";

  void set pauseOnExit(bool value) native "this.pauseOnExit = value;";

  int get size() native "return this.size;";

  void set size(int value) native "this.size = value;";

  bool get snapToLines() native "return this.snapToLines;";

  void set snapToLines(bool value) native "this.snapToLines = value;";

  num get startTime() native "return this.startTime;";

  void set startTime(num value) native "this.startTime = value;";

  String get text() native "return this.text;";

  void set text(String value) native "this.text = value;";

  int get textPosition() native "return this.textPosition;";

  void set textPosition(int value) native "this.textPosition = value;";

  TextTrackJS get track() native "return this.track;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  DocumentFragmentJS getCueAsHTML() native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TextTrackCueListJS implements TextTrackCueList native "*TextTrackCueList" {

  int get length() native "return this.length;";

  TextTrackCueJS getCueById(String id) native;

  TextTrackCueJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TextTrackListJS implements TextTrackList native "*TextTrackList" {

  int get length() native "return this.length;";

  EventListener get onaddtrack() native "return this.onaddtrack;";

  void set onaddtrack(EventListener value) native "this.onaddtrack = value;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  TextTrackJS item(int index) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TimeRangesJS implements TimeRanges native "*TimeRanges" {

  int get length() native "return this.length;";

  num end(int index) native;

  num start(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TouchJS implements Touch native "*Touch" {

  int get clientX() native "return this.clientX;";

  int get clientY() native "return this.clientY;";

  int get identifier() native "return this.identifier;";

  int get pageX() native "return this.pageX;";

  int get pageY() native "return this.pageY;";

  int get screenX() native "return this.screenX;";

  int get screenY() native "return this.screenY;";

  EventTargetJS get target() native "return this.target;";

  num get webkitForce() native "return this.webkitForce;";

  int get webkitRadiusX() native "return this.webkitRadiusX;";

  int get webkitRadiusY() native "return this.webkitRadiusY;";

  num get webkitRotationAngle() native "return this.webkitRotationAngle;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TouchEventJS extends UIEventJS implements TouchEvent native "*TouchEvent" {

  bool get altKey() native "return this.altKey;";

  TouchListJS get changedTouches() native "return this.changedTouches;";

  bool get ctrlKey() native "return this.ctrlKey;";

  bool get metaKey() native "return this.metaKey;";

  bool get shiftKey() native "return this.shiftKey;";

  TouchListJS get targetTouches() native "return this.targetTouches;";

  TouchListJS get touches() native "return this.touches;";

  void initTouchEvent(TouchListJS touches, TouchListJS targetTouches, TouchListJS changedTouches, String type, DOMWindowJS view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey) native;
}

class TouchListJS implements TouchList native "*TouchList" {

  int get length() native "return this.length;";

  TouchJS operator[](int index) native;

  void operator[]=(int index, TouchJS value) {
    throw new UnsupportedOperationException("Cannot assign element of immutable List.");
  }

  TouchJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class TrackEventJS extends EventJS implements TrackEvent native "*TrackEvent" {

  Object get track() native "return this.track;";
}

class TreeWalkerJS implements TreeWalker native "*TreeWalker" {

  NodeJS get currentNode() native "return this.currentNode;";

  void set currentNode(NodeJS value) native "this.currentNode = value;";

  bool get expandEntityReferences() native "return this.expandEntityReferences;";

  NodeFilterJS get filter() native "return this.filter;";

  NodeJS get root() native "return this.root;";

  int get whatToShow() native "return this.whatToShow;";

  NodeJS firstChild() native;

  NodeJS lastChild() native;

  NodeJS nextNode() native;

  NodeJS nextSibling() native;

  NodeJS parentNode() native;

  NodeJS previousNode() native;

  NodeJS previousSibling() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class UIEventJS extends EventJS implements UIEvent native "*UIEvent" {

  int get charCode() native "return this.charCode;";

  int get detail() native "return this.detail;";

  int get keyCode() native "return this.keyCode;";

  int get layerX() native "return this.layerX;";

  int get layerY() native "return this.layerY;";

  int get pageX() native "return this.pageX;";

  int get pageY() native "return this.pageY;";

  DOMWindowJS get view() native "return this.view;";

  int get which() native "return this.which;";

  void initUIEvent(String type, bool canBubble, bool cancelable, DOMWindowJS view, int detail) native;
}

class Uint16ArrayJS extends ArrayBufferViewJS implements Uint16Array, List<int> native "*Uint16Array" {

  factory Uint16Array(int length) =>  _construct(length);

  factory Uint16Array.fromList(List<int> list) => _construct(list);

  factory Uint16Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Uint16Array(arg);';

  static final int BYTES_PER_ELEMENT = 2;

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  void setElements(Object array, [int offset = null]) native;

  Uint16ArrayJS subarray(int start, [int end = null]) native;
}

class Uint32ArrayJS extends ArrayBufferViewJS implements Uint32Array, List<int> native "*Uint32Array" {

  factory Uint32Array(int length) =>  _construct(length);

  factory Uint32Array.fromList(List<int> list) => _construct(list);

  factory Uint32Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Uint32Array(arg);';

  static final int BYTES_PER_ELEMENT = 4;

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  void setElements(Object array, [int offset = null]) native;

  Uint32ArrayJS subarray(int start, [int end = null]) native;
}

class Uint8ArrayJS extends ArrayBufferViewJS implements Uint8Array, List<int> native "*Uint8Array" {

  factory Uint8Array(int length) =>  _construct(length);

  factory Uint8Array.fromList(List<int> list) => _construct(list);

  factory Uint8Array.fromBuffer(ArrayBuffer buffer) => _construct(buffer);

  static _construct(arg) native 'return new Uint8Array(arg);';

  static final int BYTES_PER_ELEMENT = 1;

  int get length() native "return this.length;";

  int operator[](int index) native;

  void operator[]=(int index, int value) native;

  void setElements(Object array, [int offset = null]) native;

  Uint8ArrayJS subarray(int start, [int end = null]) native;
}

class ValidityStateJS implements ValidityState native "*ValidityState" {

  bool get customError() native "return this.customError;";

  bool get patternMismatch() native "return this.patternMismatch;";

  bool get rangeOverflow() native "return this.rangeOverflow;";

  bool get rangeUnderflow() native "return this.rangeUnderflow;";

  bool get stepMismatch() native "return this.stepMismatch;";

  bool get tooLong() native "return this.tooLong;";

  bool get typeMismatch() native "return this.typeMismatch;";

  bool get valid() native "return this.valid;";

  bool get valueMissing() native "return this.valueMissing;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WaveShaperNodeJS extends AudioNodeJS implements WaveShaperNode native "*WaveShaperNode" {

  Float32ArrayJS get curve() native "return this.curve;";

  void set curve(Float32ArrayJS value) native "this.curve = value;";
}

class WebGLActiveInfoJS implements WebGLActiveInfo native "*WebGLActiveInfo" {

  String get name() native "return this.name;";

  int get size() native "return this.size;";

  int get type() native "return this.type;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLBufferJS implements WebGLBuffer native "*WebGLBuffer" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLCompressedTexturesJS implements WebGLCompressedTextures native "*WebGLCompressedTextures" {

  static final int COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 0x8C02;

  static final int COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;

  static final int COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;

  static final int COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 0x8C00;

  static final int COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;

  static final int ETC1_RGB8_OES = 0x8D64;

  void compressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, ArrayBufferViewJS data) native;

  void compressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, ArrayBufferViewJS data) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLContextAttributesJS implements WebGLContextAttributes native "*WebGLContextAttributes" {

  bool get alpha() native "return this.alpha;";

  void set alpha(bool value) native "this.alpha = value;";

  bool get antialias() native "return this.antialias;";

  void set antialias(bool value) native "this.antialias = value;";

  bool get depth() native "return this.depth;";

  void set depth(bool value) native "this.depth = value;";

  bool get premultipliedAlpha() native "return this.premultipliedAlpha;";

  void set premultipliedAlpha(bool value) native "this.premultipliedAlpha = value;";

  bool get preserveDrawingBuffer() native "return this.preserveDrawingBuffer;";

  void set preserveDrawingBuffer(bool value) native "this.preserveDrawingBuffer = value;";

  bool get stencil() native "return this.stencil;";

  void set stencil(bool value) native "this.stencil = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLContextEventJS extends EventJS implements WebGLContextEvent native "*WebGLContextEvent" {

  String get statusMessage() native "return this.statusMessage;";
}

class WebGLDebugRendererInfoJS implements WebGLDebugRendererInfo native "*WebGLDebugRendererInfo" {

  static final int UNMASKED_RENDERER_WEBGL = 0x9246;

  static final int UNMASKED_VENDOR_WEBGL = 0x9245;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLDebugShadersJS implements WebGLDebugShaders native "*WebGLDebugShaders" {

  String getTranslatedShaderSource(WebGLShaderJS shader) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLFramebufferJS implements WebGLFramebuffer native "*WebGLFramebuffer" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLLoseContextJS implements WebGLLoseContext native "*WebGLLoseContext" {

  void loseContext() native;

  void restoreContext() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLProgramJS implements WebGLProgram native "*WebGLProgram" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLRenderbufferJS implements WebGLRenderbuffer native "*WebGLRenderbuffer" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLRenderingContextJS extends CanvasRenderingContextJS implements WebGLRenderingContext native "*WebGLRenderingContext" {

  static final int ACTIVE_ATTRIBUTES = 0x8B89;

  static final int ACTIVE_TEXTURE = 0x84E0;

  static final int ACTIVE_UNIFORMS = 0x8B86;

  static final int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  static final int ALIASED_POINT_SIZE_RANGE = 0x846D;

  static final int ALPHA = 0x1906;

  static final int ALPHA_BITS = 0x0D55;

  static final int ALWAYS = 0x0207;

  static final int ARRAY_BUFFER = 0x8892;

  static final int ARRAY_BUFFER_BINDING = 0x8894;

  static final int ATTACHED_SHADERS = 0x8B85;

  static final int BACK = 0x0405;

  static final int BLEND = 0x0BE2;

  static final int BLEND_COLOR = 0x8005;

  static final int BLEND_DST_ALPHA = 0x80CA;

  static final int BLEND_DST_RGB = 0x80C8;

  static final int BLEND_EQUATION = 0x8009;

  static final int BLEND_EQUATION_ALPHA = 0x883D;

  static final int BLEND_EQUATION_RGB = 0x8009;

  static final int BLEND_SRC_ALPHA = 0x80CB;

  static final int BLEND_SRC_RGB = 0x80C9;

  static final int BLUE_BITS = 0x0D54;

  static final int BOOL = 0x8B56;

  static final int BOOL_VEC2 = 0x8B57;

  static final int BOOL_VEC3 = 0x8B58;

  static final int BOOL_VEC4 = 0x8B59;

  static final int BROWSER_DEFAULT_WEBGL = 0x9244;

  static final int BUFFER_SIZE = 0x8764;

  static final int BUFFER_USAGE = 0x8765;

  static final int BYTE = 0x1400;

  static final int CCW = 0x0901;

  static final int CLAMP_TO_EDGE = 0x812F;

  static final int COLOR_ATTACHMENT0 = 0x8CE0;

  static final int COLOR_BUFFER_BIT = 0x00004000;

  static final int COLOR_CLEAR_VALUE = 0x0C22;

  static final int COLOR_WRITEMASK = 0x0C23;

  static final int COMPILE_STATUS = 0x8B81;

  static final int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  static final int CONSTANT_ALPHA = 0x8003;

  static final int CONSTANT_COLOR = 0x8001;

  static final int CONTEXT_LOST_WEBGL = 0x9242;

  static final int CULL_FACE = 0x0B44;

  static final int CULL_FACE_MODE = 0x0B45;

  static final int CURRENT_PROGRAM = 0x8B8D;

  static final int CURRENT_VERTEX_ATTRIB = 0x8626;

  static final int CW = 0x0900;

  static final int DECR = 0x1E03;

  static final int DECR_WRAP = 0x8508;

  static final int DELETE_STATUS = 0x8B80;

  static final int DEPTH_ATTACHMENT = 0x8D00;

  static final int DEPTH_BITS = 0x0D56;

  static final int DEPTH_BUFFER_BIT = 0x00000100;

  static final int DEPTH_CLEAR_VALUE = 0x0B73;

  static final int DEPTH_COMPONENT = 0x1902;

  static final int DEPTH_COMPONENT16 = 0x81A5;

  static final int DEPTH_FUNC = 0x0B74;

  static final int DEPTH_RANGE = 0x0B70;

  static final int DEPTH_STENCIL = 0x84F9;

  static final int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  static final int DEPTH_TEST = 0x0B71;

  static final int DEPTH_WRITEMASK = 0x0B72;

  static final int DITHER = 0x0BD0;

  static final int DONT_CARE = 0x1100;

  static final int DST_ALPHA = 0x0304;

  static final int DST_COLOR = 0x0306;

  static final int DYNAMIC_DRAW = 0x88E8;

  static final int ELEMENT_ARRAY_BUFFER = 0x8893;

  static final int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  static final int EQUAL = 0x0202;

  static final int FASTEST = 0x1101;

  static final int FLOAT = 0x1406;

  static final int FLOAT_MAT2 = 0x8B5A;

  static final int FLOAT_MAT3 = 0x8B5B;

  static final int FLOAT_MAT4 = 0x8B5C;

  static final int FLOAT_VEC2 = 0x8B50;

  static final int FLOAT_VEC3 = 0x8B51;

  static final int FLOAT_VEC4 = 0x8B52;

  static final int FRAGMENT_SHADER = 0x8B30;

  static final int FRAMEBUFFER = 0x8D40;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  static final int FRAMEBUFFER_BINDING = 0x8CA6;

  static final int FRAMEBUFFER_COMPLETE = 0x8CD5;

  static final int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  static final int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  static final int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  static final int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  static final int FRONT = 0x0404;

  static final int FRONT_AND_BACK = 0x0408;

  static final int FRONT_FACE = 0x0B46;

  static final int FUNC_ADD = 0x8006;

  static final int FUNC_REVERSE_SUBTRACT = 0x800B;

  static final int FUNC_SUBTRACT = 0x800A;

  static final int GENERATE_MIPMAP_HINT = 0x8192;

  static final int GEQUAL = 0x0206;

  static final int GREATER = 0x0204;

  static final int GREEN_BITS = 0x0D53;

  static final int HIGH_FLOAT = 0x8DF2;

  static final int HIGH_INT = 0x8DF5;

  static final int INCR = 0x1E02;

  static final int INCR_WRAP = 0x8507;

  static final int INT = 0x1404;

  static final int INT_VEC2 = 0x8B53;

  static final int INT_VEC3 = 0x8B54;

  static final int INT_VEC4 = 0x8B55;

  static final int INVALID_ENUM = 0x0500;

  static final int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  static final int INVALID_OPERATION = 0x0502;

  static final int INVALID_VALUE = 0x0501;

  static final int INVERT = 0x150A;

  static final int KEEP = 0x1E00;

  static final int LEQUAL = 0x0203;

  static final int LESS = 0x0201;

  static final int LINEAR = 0x2601;

  static final int LINEAR_MIPMAP_LINEAR = 0x2703;

  static final int LINEAR_MIPMAP_NEAREST = 0x2701;

  static final int LINES = 0x0001;

  static final int LINE_LOOP = 0x0002;

  static final int LINE_STRIP = 0x0003;

  static final int LINE_WIDTH = 0x0B21;

  static final int LINK_STATUS = 0x8B82;

  static final int LOW_FLOAT = 0x8DF0;

  static final int LOW_INT = 0x8DF3;

  static final int LUMINANCE = 0x1909;

  static final int LUMINANCE_ALPHA = 0x190A;

  static final int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  static final int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  static final int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  static final int MAX_RENDERBUFFER_SIZE = 0x84E8;

  static final int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  static final int MAX_TEXTURE_SIZE = 0x0D33;

  static final int MAX_VARYING_VECTORS = 0x8DFC;

  static final int MAX_VERTEX_ATTRIBS = 0x8869;

  static final int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  static final int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  static final int MAX_VIEWPORT_DIMS = 0x0D3A;

  static final int MEDIUM_FLOAT = 0x8DF1;

  static final int MEDIUM_INT = 0x8DF4;

  static final int MIRRORED_REPEAT = 0x8370;

  static final int NEAREST = 0x2600;

  static final int NEAREST_MIPMAP_LINEAR = 0x2702;

  static final int NEAREST_MIPMAP_NEAREST = 0x2700;

  static final int NEVER = 0x0200;

  static final int NICEST = 0x1102;

  static final int NONE = 0;

  static final int NOTEQUAL = 0x0205;

  static final int NO_ERROR = 0;

  static final int NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;

  static final int ONE = 1;

  static final int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  static final int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  static final int ONE_MINUS_DST_ALPHA = 0x0305;

  static final int ONE_MINUS_DST_COLOR = 0x0307;

  static final int ONE_MINUS_SRC_ALPHA = 0x0303;

  static final int ONE_MINUS_SRC_COLOR = 0x0301;

  static final int OUT_OF_MEMORY = 0x0505;

  static final int PACK_ALIGNMENT = 0x0D05;

  static final int POINTS = 0x0000;

  static final int POLYGON_OFFSET_FACTOR = 0x8038;

  static final int POLYGON_OFFSET_FILL = 0x8037;

  static final int POLYGON_OFFSET_UNITS = 0x2A00;

  static final int RED_BITS = 0x0D52;

  static final int RENDERBUFFER = 0x8D41;

  static final int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  static final int RENDERBUFFER_BINDING = 0x8CA7;

  static final int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  static final int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  static final int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  static final int RENDERBUFFER_HEIGHT = 0x8D43;

  static final int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  static final int RENDERBUFFER_RED_SIZE = 0x8D50;

  static final int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  static final int RENDERBUFFER_WIDTH = 0x8D42;

  static final int RENDERER = 0x1F01;

  static final int REPEAT = 0x2901;

  static final int REPLACE = 0x1E01;

  static final int RGB = 0x1907;

  static final int RGB565 = 0x8D62;

  static final int RGB5_A1 = 0x8057;

  static final int RGBA = 0x1908;

  static final int RGBA4 = 0x8056;

  static final int SAMPLER_2D = 0x8B5E;

  static final int SAMPLER_CUBE = 0x8B60;

  static final int SAMPLES = 0x80A9;

  static final int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  static final int SAMPLE_BUFFERS = 0x80A8;

  static final int SAMPLE_COVERAGE = 0x80A0;

  static final int SAMPLE_COVERAGE_INVERT = 0x80AB;

  static final int SAMPLE_COVERAGE_VALUE = 0x80AA;

  static final int SCISSOR_BOX = 0x0C10;

  static final int SCISSOR_TEST = 0x0C11;

  static final int SHADER_COMPILER = 0x8DFA;

  static final int SHADER_TYPE = 0x8B4F;

  static final int SHADING_LANGUAGE_VERSION = 0x8B8C;

  static final int SHORT = 0x1402;

  static final int SRC_ALPHA = 0x0302;

  static final int SRC_ALPHA_SATURATE = 0x0308;

  static final int SRC_COLOR = 0x0300;

  static final int STATIC_DRAW = 0x88E4;

  static final int STENCIL_ATTACHMENT = 0x8D20;

  static final int STENCIL_BACK_FAIL = 0x8801;

  static final int STENCIL_BACK_FUNC = 0x8800;

  static final int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  static final int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  static final int STENCIL_BACK_REF = 0x8CA3;

  static final int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  static final int STENCIL_BACK_WRITEMASK = 0x8CA5;

  static final int STENCIL_BITS = 0x0D57;

  static final int STENCIL_BUFFER_BIT = 0x00000400;

  static final int STENCIL_CLEAR_VALUE = 0x0B91;

  static final int STENCIL_FAIL = 0x0B94;

  static final int STENCIL_FUNC = 0x0B92;

  static final int STENCIL_INDEX = 0x1901;

  static final int STENCIL_INDEX8 = 0x8D48;

  static final int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  static final int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  static final int STENCIL_REF = 0x0B97;

  static final int STENCIL_TEST = 0x0B90;

  static final int STENCIL_VALUE_MASK = 0x0B93;

  static final int STENCIL_WRITEMASK = 0x0B98;

  static final int STREAM_DRAW = 0x88E0;

  static final int SUBPIXEL_BITS = 0x0D50;

  static final int TEXTURE = 0x1702;

  static final int TEXTURE0 = 0x84C0;

  static final int TEXTURE1 = 0x84C1;

  static final int TEXTURE10 = 0x84CA;

  static final int TEXTURE11 = 0x84CB;

  static final int TEXTURE12 = 0x84CC;

  static final int TEXTURE13 = 0x84CD;

  static final int TEXTURE14 = 0x84CE;

  static final int TEXTURE15 = 0x84CF;

  static final int TEXTURE16 = 0x84D0;

  static final int TEXTURE17 = 0x84D1;

  static final int TEXTURE18 = 0x84D2;

  static final int TEXTURE19 = 0x84D3;

  static final int TEXTURE2 = 0x84C2;

  static final int TEXTURE20 = 0x84D4;

  static final int TEXTURE21 = 0x84D5;

  static final int TEXTURE22 = 0x84D6;

  static final int TEXTURE23 = 0x84D7;

  static final int TEXTURE24 = 0x84D8;

  static final int TEXTURE25 = 0x84D9;

  static final int TEXTURE26 = 0x84DA;

  static final int TEXTURE27 = 0x84DB;

  static final int TEXTURE28 = 0x84DC;

  static final int TEXTURE29 = 0x84DD;

  static final int TEXTURE3 = 0x84C3;

  static final int TEXTURE30 = 0x84DE;

  static final int TEXTURE31 = 0x84DF;

  static final int TEXTURE4 = 0x84C4;

  static final int TEXTURE5 = 0x84C5;

  static final int TEXTURE6 = 0x84C6;

  static final int TEXTURE7 = 0x84C7;

  static final int TEXTURE8 = 0x84C8;

  static final int TEXTURE9 = 0x84C9;

  static final int TEXTURE_2D = 0x0DE1;

  static final int TEXTURE_BINDING_2D = 0x8069;

  static final int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  static final int TEXTURE_CUBE_MAP = 0x8513;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  static final int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  static final int TEXTURE_MAG_FILTER = 0x2800;

  static final int TEXTURE_MIN_FILTER = 0x2801;

  static final int TEXTURE_WRAP_S = 0x2802;

  static final int TEXTURE_WRAP_T = 0x2803;

  static final int TRIANGLES = 0x0004;

  static final int TRIANGLE_FAN = 0x0006;

  static final int TRIANGLE_STRIP = 0x0005;

  static final int UNPACK_ALIGNMENT = 0x0CF5;

  static final int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  static final int UNPACK_FLIP_Y_WEBGL = 0x9240;

  static final int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  static final int UNSIGNED_BYTE = 0x1401;

  static final int UNSIGNED_INT = 0x1405;

  static final int UNSIGNED_SHORT = 0x1403;

  static final int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  static final int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  static final int UNSIGNED_SHORT_5_6_5 = 0x8363;

  static final int VALIDATE_STATUS = 0x8B83;

  static final int VENDOR = 0x1F00;

  static final int VERSION = 0x1F02;

  static final int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  static final int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  static final int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  static final int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  static final int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  static final int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  static final int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  static final int VERTEX_SHADER = 0x8B31;

  static final int VIEWPORT = 0x0BA2;

  static final int ZERO = 0;

  int get drawingBufferHeight() native "return this.drawingBufferHeight;";

  int get drawingBufferWidth() native "return this.drawingBufferWidth;";

  void activeTexture(int texture) native;

  void attachShader(WebGLProgramJS program, WebGLShaderJS shader) native;

  void bindAttribLocation(WebGLProgramJS program, int index, String name) native;

  void bindBuffer(int target, WebGLBufferJS buffer) native;

  void bindFramebuffer(int target, WebGLFramebufferJS framebuffer) native;

  void bindRenderbuffer(int target, WebGLRenderbufferJS renderbuffer) native;

  void bindTexture(int target, WebGLTextureJS texture) native;

  void blendColor(num red, num green, num blue, num alpha) native;

  void blendEquation(int mode) native;

  void blendEquationSeparate(int modeRGB, int modeAlpha) native;

  void blendFunc(int sfactor, int dfactor) native;

  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) native;

  void bufferData(int target, var data_OR_size, int usage) native;

  void bufferSubData(int target, int offset, var data) native;

  int checkFramebufferStatus(int target) native;

  void clear(int mask) native;

  void clearColor(num red, num green, num blue, num alpha) native;

  void clearDepth(num depth) native;

  void clearStencil(int s) native;

  void colorMask(bool red, bool green, bool blue, bool alpha) native;

  void compileShader(WebGLShaderJS shader) native;

  void copyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border) native;

  void copyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) native;

  WebGLBufferJS createBuffer() native;

  WebGLFramebufferJS createFramebuffer() native;

  WebGLProgramJS createProgram() native;

  WebGLRenderbufferJS createRenderbuffer() native;

  WebGLShaderJS createShader(int type) native;

  WebGLTextureJS createTexture() native;

  void cullFace(int mode) native;

  void deleteBuffer(WebGLBufferJS buffer) native;

  void deleteFramebuffer(WebGLFramebufferJS framebuffer) native;

  void deleteProgram(WebGLProgramJS program) native;

  void deleteRenderbuffer(WebGLRenderbufferJS renderbuffer) native;

  void deleteShader(WebGLShaderJS shader) native;

  void deleteTexture(WebGLTextureJS texture) native;

  void depthFunc(int func) native;

  void depthMask(bool flag) native;

  void depthRange(num zNear, num zFar) native;

  void detachShader(WebGLProgramJS program, WebGLShaderJS shader) native;

  void disable(int cap) native;

  void disableVertexAttribArray(int index) native;

  void drawArrays(int mode, int first, int count) native;

  void drawElements(int mode, int count, int type, int offset) native;

  void enable(int cap) native;

  void enableVertexAttribArray(int index) native;

  void finish() native;

  void flush() native;

  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, WebGLRenderbufferJS renderbuffer) native;

  void framebufferTexture2D(int target, int attachment, int textarget, WebGLTextureJS texture, int level) native;

  void frontFace(int mode) native;

  void generateMipmap(int target) native;

  WebGLActiveInfoJS getActiveAttrib(WebGLProgramJS program, int index) native;

  WebGLActiveInfoJS getActiveUniform(WebGLProgramJS program, int index) native;

  List getAttachedShaders(WebGLProgramJS program) native;

  int getAttribLocation(WebGLProgramJS program, String name) native;

  Object getBufferParameter(int target, int pname) native;

  WebGLContextAttributesJS getContextAttributes() native;

  int getError() native;

  Object getExtension(String name) native;

  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) native;

  Object getParameter(int pname) native;

  String getProgramInfoLog(WebGLProgramJS program) native;

  Object getProgramParameter(WebGLProgramJS program, int pname) native;

  Object getRenderbufferParameter(int target, int pname) native;

  String getShaderInfoLog(WebGLShaderJS shader) native;

  Object getShaderParameter(WebGLShaderJS shader, int pname) native;

  String getShaderSource(WebGLShaderJS shader) native;

  Object getTexParameter(int target, int pname) native;

  Object getUniform(WebGLProgramJS program, WebGLUniformLocationJS location) native;

  WebGLUniformLocationJS getUniformLocation(WebGLProgramJS program, String name) native;

  Object getVertexAttrib(int index, int pname) native;

  int getVertexAttribOffset(int index, int pname) native;

  void hint(int target, int mode) native;

  bool isBuffer(WebGLBufferJS buffer) native;

  bool isContextLost() native;

  bool isEnabled(int cap) native;

  bool isFramebuffer(WebGLFramebufferJS framebuffer) native;

  bool isProgram(WebGLProgramJS program) native;

  bool isRenderbuffer(WebGLRenderbufferJS renderbuffer) native;

  bool isShader(WebGLShaderJS shader) native;

  bool isTexture(WebGLTextureJS texture) native;

  void lineWidth(num width) native;

  void linkProgram(WebGLProgramJS program) native;

  void pixelStorei(int pname, int param) native;

  void polygonOffset(num factor, num units) native;

  void readPixels(int x, int y, int width, int height, int format, int type, ArrayBufferViewJS pixels) native;

  void releaseShaderCompiler() native;

  void renderbufferStorage(int target, int internalformat, int width, int height) native;

  void sampleCoverage(num value, bool invert) native;

  void scissor(int x, int y, int width, int height) native;

  void shaderSource(WebGLShaderJS shader, String string) native;

  void stencilFunc(int func, int ref, int mask) native;

  void stencilFuncSeparate(int face, int func, int ref, int mask) native;

  void stencilMask(int mask) native;

  void stencilMaskSeparate(int face, int mask) native;

  void stencilOp(int fail, int zfail, int zpass) native;

  void stencilOpSeparate(int face, int fail, int zfail, int zpass) native;

  void texImage2D(int target, int level, int internalformat, int format_OR_width, int height_OR_type, var border_OR_canvas_OR_image_OR_pixels_OR_video, [int format = null, int type = null, ArrayBufferViewJS pixels = null]) native;

  void texParameterf(int target, int pname, num param) native;

  void texParameteri(int target, int pname, int param) native;

  void texSubImage2D(int target, int level, int xoffset, int yoffset, int format_OR_width, int height_OR_type, var canvas_OR_format_OR_image_OR_pixels_OR_video, [int type = null, ArrayBufferViewJS pixels = null]) native;

  void uniform1f(WebGLUniformLocationJS location, num x) native;

  void uniform1fv(WebGLUniformLocationJS location, Float32ArrayJS v) native;

  void uniform1i(WebGLUniformLocationJS location, int x) native;

  void uniform1iv(WebGLUniformLocationJS location, Int32ArrayJS v) native;

  void uniform2f(WebGLUniformLocationJS location, num x, num y) native;

  void uniform2fv(WebGLUniformLocationJS location, Float32ArrayJS v) native;

  void uniform2i(WebGLUniformLocationJS location, int x, int y) native;

  void uniform2iv(WebGLUniformLocationJS location, Int32ArrayJS v) native;

  void uniform3f(WebGLUniformLocationJS location, num x, num y, num z) native;

  void uniform3fv(WebGLUniformLocationJS location, Float32ArrayJS v) native;

  void uniform3i(WebGLUniformLocationJS location, int x, int y, int z) native;

  void uniform3iv(WebGLUniformLocationJS location, Int32ArrayJS v) native;

  void uniform4f(WebGLUniformLocationJS location, num x, num y, num z, num w) native;

  void uniform4fv(WebGLUniformLocationJS location, Float32ArrayJS v) native;

  void uniform4i(WebGLUniformLocationJS location, int x, int y, int z, int w) native;

  void uniform4iv(WebGLUniformLocationJS location, Int32ArrayJS v) native;

  void uniformMatrix2fv(WebGLUniformLocationJS location, bool transpose, Float32ArrayJS array) native;

  void uniformMatrix3fv(WebGLUniformLocationJS location, bool transpose, Float32ArrayJS array) native;

  void uniformMatrix4fv(WebGLUniformLocationJS location, bool transpose, Float32ArrayJS array) native;

  void useProgram(WebGLProgramJS program) native;

  void validateProgram(WebGLProgramJS program) native;

  void vertexAttrib1f(int indx, num x) native;

  void vertexAttrib1fv(int indx, Float32ArrayJS values) native;

  void vertexAttrib2f(int indx, num x, num y) native;

  void vertexAttrib2fv(int indx, Float32ArrayJS values) native;

  void vertexAttrib3f(int indx, num x, num y, num z) native;

  void vertexAttrib3fv(int indx, Float32ArrayJS values) native;

  void vertexAttrib4f(int indx, num x, num y, num z, num w) native;

  void vertexAttrib4fv(int indx, Float32ArrayJS values) native;

  void vertexAttribPointer(int indx, int size, int type, bool normalized, int stride, int offset) native;

  void viewport(int x, int y, int width, int height) native;
}

class WebGLShaderJS implements WebGLShader native "*WebGLShader" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLTextureJS implements WebGLTexture native "*WebGLTexture" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLUniformLocationJS implements WebGLUniformLocation native "*WebGLUniformLocation" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebGLVertexArrayObjectOESJS implements WebGLVertexArrayObjectOES native "*WebGLVertexArrayObjectOES" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitAnimationJS implements WebKitAnimation native "*WebKitAnimation" {

  static final int DIRECTION_ALTERNATE = 1;

  static final int DIRECTION_NORMAL = 0;

  static final int FILL_BACKWARDS = 1;

  static final int FILL_BOTH = 3;

  static final int FILL_FORWARDS = 2;

  static final int FILL_NONE = 0;

  num get delay() native "return this.delay;";

  int get direction() native "return this.direction;";

  num get duration() native "return this.duration;";

  num get elapsedTime() native "return this.elapsedTime;";

  void set elapsedTime(num value) native "this.elapsedTime = value;";

  bool get ended() native "return this.ended;";

  int get fillMode() native "return this.fillMode;";

  int get iterationCount() native "return this.iterationCount;";

  String get name() native "return this.name;";

  bool get paused() native "return this.paused;";

  void pause() native;

  void play() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitAnimationEventJS extends EventJS implements WebKitAnimationEvent native "*WebKitAnimationEvent" {

  String get animationName() native "return this.animationName;";

  num get elapsedTime() native "return this.elapsedTime;";
}

class WebKitAnimationListJS implements WebKitAnimationList native "*WebKitAnimationList" {

  int get length() native "return this.length;";

  WebKitAnimationJS item(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitBlobBuilderJS implements WebKitBlobBuilder native "*WebKitBlobBuilder" {

  void append(var arrayBuffer_OR_blob_OR_value, [String endings = null]) native;

  BlobJS getBlob([String contentType = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitCSSFilterValueJS extends CSSValueListJS implements WebKitCSSFilterValue native "*WebKitCSSFilterValue" {

  static final int CSS_FILTER_BLUR = 10;

  static final int CSS_FILTER_BRIGHTNESS = 8;

  static final int CSS_FILTER_CONTRAST = 9;

  static final int CSS_FILTER_DROP_SHADOW = 11;

  static final int CSS_FILTER_GRAYSCALE = 2;

  static final int CSS_FILTER_HUE_ROTATE = 5;

  static final int CSS_FILTER_INVERT = 6;

  static final int CSS_FILTER_OPACITY = 7;

  static final int CSS_FILTER_REFERENCE = 1;

  static final int CSS_FILTER_SATURATE = 4;

  static final int CSS_FILTER_SEPIA = 3;

  int get operationType() native "return this.operationType;";
}

class WebKitCSSKeyframeRuleJS extends CSSRuleJS implements WebKitCSSKeyframeRule native "*WebKitCSSKeyframeRule" {

  String get keyText() native "return this.keyText;";

  void set keyText(String value) native "this.keyText = value;";

  CSSStyleDeclarationJS get style() native "return this.style;";
}

class WebKitCSSKeyframesRuleJS extends CSSRuleJS implements WebKitCSSKeyframesRule native "*WebKitCSSKeyframesRule" {

  CSSRuleListJS get cssRules() native "return this.cssRules;";

  String get name() native "return this.name;";

  void set name(String value) native "this.name = value;";

  void deleteRule(String key) native;

  WebKitCSSKeyframeRuleJS findRule(String key) native;

  void insertRule(String rule) native;
}

class WebKitCSSMatrixJS implements WebKitCSSMatrix native "*WebKitCSSMatrix" {
  WebKitCSSMatrix([String spec]) native;


  num get a() native "return this.a;";

  void set a(num value) native "this.a = value;";

  num get b() native "return this.b;";

  void set b(num value) native "this.b = value;";

  num get c() native "return this.c;";

  void set c(num value) native "this.c = value;";

  num get d() native "return this.d;";

  void set d(num value) native "this.d = value;";

  num get e() native "return this.e;";

  void set e(num value) native "this.e = value;";

  num get f() native "return this.f;";

  void set f(num value) native "this.f = value;";

  num get m11() native "return this.m11;";

  void set m11(num value) native "this.m11 = value;";

  num get m12() native "return this.m12;";

  void set m12(num value) native "this.m12 = value;";

  num get m13() native "return this.m13;";

  void set m13(num value) native "this.m13 = value;";

  num get m14() native "return this.m14;";

  void set m14(num value) native "this.m14 = value;";

  num get m21() native "return this.m21;";

  void set m21(num value) native "this.m21 = value;";

  num get m22() native "return this.m22;";

  void set m22(num value) native "this.m22 = value;";

  num get m23() native "return this.m23;";

  void set m23(num value) native "this.m23 = value;";

  num get m24() native "return this.m24;";

  void set m24(num value) native "this.m24 = value;";

  num get m31() native "return this.m31;";

  void set m31(num value) native "this.m31 = value;";

  num get m32() native "return this.m32;";

  void set m32(num value) native "this.m32 = value;";

  num get m33() native "return this.m33;";

  void set m33(num value) native "this.m33 = value;";

  num get m34() native "return this.m34;";

  void set m34(num value) native "this.m34 = value;";

  num get m41() native "return this.m41;";

  void set m41(num value) native "this.m41 = value;";

  num get m42() native "return this.m42;";

  void set m42(num value) native "this.m42 = value;";

  num get m43() native "return this.m43;";

  void set m43(num value) native "this.m43 = value;";

  num get m44() native "return this.m44;";

  void set m44(num value) native "this.m44 = value;";

  WebKitCSSMatrixJS inverse() native;

  WebKitCSSMatrixJS multiply(WebKitCSSMatrixJS secondMatrix) native;

  WebKitCSSMatrixJS rotate(num rotX, num rotY, num rotZ) native;

  WebKitCSSMatrixJS rotateAxisAngle(num x, num y, num z, num angle) native;

  WebKitCSSMatrixJS scale(num scaleX, num scaleY, num scaleZ) native;

  void setMatrixValue(String string) native;

  WebKitCSSMatrixJS skewX(num angle) native;

  WebKitCSSMatrixJS skewY(num angle) native;

  String toString() native;

  WebKitCSSMatrixJS translate(num x, num y, num z) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitCSSTransformValueJS extends CSSValueListJS implements WebKitCSSTransformValue native "*WebKitCSSTransformValue" {

  static final int CSS_MATRIX = 11;

  static final int CSS_MATRIX3D = 21;

  static final int CSS_PERSPECTIVE = 20;

  static final int CSS_ROTATE = 4;

  static final int CSS_ROTATE3D = 17;

  static final int CSS_ROTATEX = 14;

  static final int CSS_ROTATEY = 15;

  static final int CSS_ROTATEZ = 16;

  static final int CSS_SCALE = 5;

  static final int CSS_SCALE3D = 19;

  static final int CSS_SCALEX = 6;

  static final int CSS_SCALEY = 7;

  static final int CSS_SCALEZ = 18;

  static final int CSS_SKEW = 8;

  static final int CSS_SKEWX = 9;

  static final int CSS_SKEWY = 10;

  static final int CSS_TRANSLATE = 1;

  static final int CSS_TRANSLATE3D = 13;

  static final int CSS_TRANSLATEX = 2;

  static final int CSS_TRANSLATEY = 3;

  static final int CSS_TRANSLATEZ = 12;

  int get operationType() native "return this.operationType;";
}

class WebKitMutationObserverJS implements WebKitMutationObserver native "*WebKitMutationObserver" {

  void disconnect() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitNamedFlowJS implements WebKitNamedFlow native "*WebKitNamedFlow" {

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitPointJS implements WebKitPoint native "*WebKitPoint" {
  WebKitPoint(num x, num y) native;


  num get x() native "return this.x;";

  void set x(num value) native "this.x = value;";

  num get y() native "return this.y;";

  void set y(num value) native "this.y = value;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WebKitTransitionEventJS extends EventJS implements WebKitTransitionEvent native "*WebKitTransitionEvent" {

  num get elapsedTime() native "return this.elapsedTime;";

  String get propertyName() native "return this.propertyName;";
}

class WebSocketJS implements WebSocket native "*WebSocket" {
  WebSocket(String url) native;


  static final int CLOSED = 3;

  static final int CLOSING = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  String get URL() native "return this.URL;";

  String get binaryType() native "return this.binaryType;";

  void set binaryType(String value) native "this.binaryType = value;";

  int get bufferedAmount() native "return this.bufferedAmount;";

  String get extensions() native "return this.extensions;";

  String get protocol() native "return this.protocol;";

  int get readyState() native "return this.readyState;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void close([int code = null, String reason = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool send(String data) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WheelEventJS extends UIEventJS implements WheelEvent native "*WheelEvent" {

  bool get altKey() native "return this.altKey;";

  int get clientX() native "return this.clientX;";

  int get clientY() native "return this.clientY;";

  bool get ctrlKey() native "return this.ctrlKey;";

  bool get metaKey() native "return this.metaKey;";

  int get offsetX() native "return this.offsetX;";

  int get offsetY() native "return this.offsetY;";

  int get screenX() native "return this.screenX;";

  int get screenY() native "return this.screenY;";

  bool get shiftKey() native "return this.shiftKey;";

  bool get webkitDirectionInvertedFromDevice() native "return this.webkitDirectionInvertedFromDevice;";

  int get wheelDelta() native "return this.wheelDelta;";

  int get wheelDeltaX() native "return this.wheelDeltaX;";

  int get wheelDeltaY() native "return this.wheelDeltaY;";

  int get x() native "return this.x;";

  int get y() native "return this.y;";

  void initWebKitWheelEvent(int wheelDeltaX, int wheelDeltaY, DOMWindowJS view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey) native;
}

class WorkerJS extends AbstractWorkerJS implements Worker native "*Worker" {

  void postMessage(String message, [List messagePorts = null]) native;

  void terminate() native;

  void webkitPostMessage(String message, [List messagePorts = null]) native;
}

class WorkerContextJS implements WorkerContext native "*WorkerContext" {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  WorkerLocationJS get location() native "return this.location;";

  void set location(WorkerLocationJS value) native "this.location = value;";

  WorkerNavigatorJS get navigator() native "return this.navigator;";

  void set navigator(WorkerNavigatorJS value) native "this.navigator = value;";

  EventListener get onerror() native "return this.onerror;";

  void set onerror(EventListener value) native "this.onerror = value;";

  WorkerContextJS get self() native "return this.self;";

  void set self(WorkerContextJS value) native "this.self = value;";

  IDBFactoryJS get webkitIndexedDB() native "return this.webkitIndexedDB;";

  NotificationCenterJS get webkitNotifications() native "return this.webkitNotifications;";

  DOMURLJS get webkitURL() native "return this.webkitURL;";

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void clearInterval(int handle) native;

  void clearTimeout(int handle) native;

  void close() native;

  bool dispatchEvent(EventJS evt) native;

  void importScripts() native;

  DatabaseJS openDatabase(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback = null]) native;

  DatabaseSyncJS openDatabaseSync(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback = null]) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  int setInterval(TimeoutHandler handler, int timeout) native;

  int setTimeout(TimeoutHandler handler, int timeout) native;

  void webkitRequestFileSystem(int type, int size, [FileSystemCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  DOMFileSystemSyncJS webkitRequestFileSystemSync(int type, int size) native;

  EntrySyncJS webkitResolveLocalFileSystemSyncURL(String url) native;

  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback = null, ErrorCallback errorCallback = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WorkerLocationJS implements WorkerLocation native "*WorkerLocation" {

  String get hash() native "return this.hash;";

  String get host() native "return this.host;";

  String get hostname() native "return this.hostname;";

  String get href() native "return this.href;";

  String get pathname() native "return this.pathname;";

  String get port() native "return this.port;";

  String get protocol() native "return this.protocol;";

  String get search() native "return this.search;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class WorkerNavigatorJS implements WorkerNavigator native "*WorkerNavigator" {

  String get appName() native "return this.appName;";

  String get appVersion() native "return this.appVersion;";

  bool get onLine() native "return this.onLine;";

  String get platform() native "return this.platform;";

  String get userAgent() native "return this.userAgent;";

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XMLHttpRequestJS implements XMLHttpRequest native "*XMLHttpRequest" {
  XMLHttpRequest() native;


  static final int DONE = 4;

  static final int HEADERS_RECEIVED = 2;

  static final int LOADING = 3;

  static final int OPENED = 1;

  static final int UNSENT = 0;

  bool get asBlob() native "return this.asBlob;";

  void set asBlob(bool value) native "this.asBlob = value;";

  int get readyState() native "return this.readyState;";

  BlobJS get responseBlob() native "return this.responseBlob;";

  String get responseText() native "return this.responseText;";

  String get responseType() native "return this.responseType;";

  void set responseType(String value) native "this.responseType = value;";

  DocumentJS get responseXML() native "return this.responseXML;";

  int get status() native "return this.status;";

  String get statusText() native "return this.statusText;";

  XMLHttpRequestUploadJS get upload() native "return this.upload;";

  bool get withCredentials() native "return this.withCredentials;";

  void set withCredentials(bool value) native "this.withCredentials = value;";

  void abort() native;

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  String getAllResponseHeaders() native;

  String getResponseHeader(String header) native;

  void open(String method, String url, [bool async = null, String user = null, String password = null]) native;

  void overrideMimeType(String override) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  void send([var data = null]) native;

  void setRequestHeader(String header, String value) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XMLHttpRequestExceptionJS implements XMLHttpRequestException native "*XMLHttpRequestException" {

  static final int ABORT_ERR = 102;

  static final int NETWORK_ERR = 101;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XMLHttpRequestProgressEventJS extends ProgressEventJS implements XMLHttpRequestProgressEvent native "*XMLHttpRequestProgressEvent" {

  int get position() native "return this.position;";

  int get totalSize() native "return this.totalSize;";
}

class XMLHttpRequestUploadJS implements XMLHttpRequestUpload native "*XMLHttpRequestUpload" {

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  bool dispatchEvent(EventJS evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XMLSerializerJS implements XMLSerializer native "*XMLSerializer" {

  String serializeToString(NodeJS node) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XPathEvaluatorJS implements XPathEvaluator native "*XPathEvaluator" {

  XPathExpressionJS createExpression(String expression, XPathNSResolverJS resolver) native;

  XPathNSResolverJS createNSResolver(NodeJS nodeResolver) native;

  XPathResultJS evaluate(String expression, NodeJS contextNode, XPathNSResolverJS resolver, int type, XPathResultJS inResult) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XPathExceptionJS implements XPathException native "*XPathException" {

  static final int INVALID_EXPRESSION_ERR = 51;

  static final int TYPE_ERR = 52;

  int get code() native "return this.code;";

  String get message() native "return this.message;";

  String get name() native "return this.name;";

  String toString() native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XPathExpressionJS implements XPathExpression native "*XPathExpression" {

  XPathResultJS evaluate(NodeJS contextNode, int type, XPathResultJS inResult) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XPathNSResolverJS implements XPathNSResolver native "*XPathNSResolver" {

  String lookupNamespaceURI(String prefix) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XPathResultJS implements XPathResult native "*XPathResult" {

  static final int ANY_TYPE = 0;

  static final int ANY_UNORDERED_NODE_TYPE = 8;

  static final int BOOLEAN_TYPE = 3;

  static final int FIRST_ORDERED_NODE_TYPE = 9;

  static final int NUMBER_TYPE = 1;

  static final int ORDERED_NODE_ITERATOR_TYPE = 5;

  static final int ORDERED_NODE_SNAPSHOT_TYPE = 7;

  static final int STRING_TYPE = 2;

  static final int UNORDERED_NODE_ITERATOR_TYPE = 4;

  static final int UNORDERED_NODE_SNAPSHOT_TYPE = 6;

  bool get booleanValue() native "return this.booleanValue;";

  bool get invalidIteratorState() native "return this.invalidIteratorState;";

  num get numberValue() native "return this.numberValue;";

  int get resultType() native "return this.resultType;";

  NodeJS get singleNodeValue() native "return this.singleNodeValue;";

  int get snapshotLength() native "return this.snapshotLength;";

  String get stringValue() native "return this.stringValue;";

  NodeJS iterateNext() native;

  NodeJS snapshotItem(int index) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}

class XSLTProcessorJS implements XSLTProcessor native "*XSLTProcessor" {

  void clearParameters() native;

  String getParameter(String namespaceURI, String localName) native;

  void importStylesheet(NodeJS stylesheet) native;

  void removeParameter(String namespaceURI, String localName) native;

  void reset() native;

  void setParameter(String namespaceURI, String localName, String value) native;

  DocumentJS transformToDocument(NodeJS source) native;

  DocumentFragmentJS transformToFragment(NodeJS source, DocumentJS docVal) native;

  var dartObjectLocalStorage;

  String get typeName() native;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AbstractWorker extends EventTarget {

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ArrayBuffer {

  int get byteLength();

  ArrayBuffer slice(int begin, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ArrayBufferView {

  ArrayBuffer get buffer();

  int get byteLength();

  int get byteOffset();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Attr extends Node {

  bool get isId();

  String get name();

  Element get ownerElement();

  bool get specified();

  String get value();

  void set value(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioBuffer {

  num get duration();

  num get gain();

  void set gain(num value);

  int get length();

  int get numberOfChannels();

  num get sampleRate();

  Float32Array getChannelData(int channelIndex);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool AudioBufferCallback(AudioBuffer audioBuffer);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioBufferSourceNode extends AudioSourceNode {

  AudioBuffer get buffer();

  void set buffer(AudioBuffer value);

  AudioGain get gain();

  bool get loop();

  void set loop(bool value);

  bool get looping();

  void set looping(bool value);

  AudioParam get playbackRate();

  void noteGrainOn(num when, num grainOffset, num grainDuration);

  void noteOff(num when);

  void noteOn(num when);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioChannelMerger extends AudioNode {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioChannelSplitter extends AudioNode {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioContext default _AudioContextFactoryProvider {

  AudioContext();

  num get currentTime();

  AudioDestinationNode get destination();

  AudioListener get listener();

  EventListener get oncomplete();

  void set oncomplete(EventListener value);

  num get sampleRate();

  RealtimeAnalyserNode createAnalyser();

  BiquadFilterNode createBiquadFilter();

  AudioBuffer createBuffer(var buffer_OR_numberOfChannels, var mixToMono_OR_numberOfFrames, [num sampleRate]);

  AudioBufferSourceNode createBufferSource();

  AudioChannelMerger createChannelMerger();

  AudioChannelSplitter createChannelSplitter();

  ConvolverNode createConvolver();

  DelayNode createDelayNode();

  DynamicsCompressorNode createDynamicsCompressor();

  AudioGainNode createGainNode();

  HighPass2FilterNode createHighPass2Filter();

  JavaScriptAudioNode createJavaScriptNode(int bufferSize);

  LowPass2FilterNode createLowPass2Filter();

  MediaElementAudioSourceNode createMediaElementSource(HTMLMediaElement mediaElement);

  AudioPannerNode createPanner();

  WaveShaperNode createWaveShaper();

  void decodeAudioData(ArrayBuffer audioData, AudioBufferCallback successCallback, [AudioBufferCallback errorCallback]);

  void startRendering();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioDestinationNode extends AudioNode {

  int get numberOfChannels();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioGain extends AudioParam {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioGainNode extends AudioNode {

  AudioGain get gain();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioListener {

  num get dopplerFactor();

  void set dopplerFactor(num value);

  num get speedOfSound();

  void set speedOfSound(num value);

  void setOrientation(num x, num y, num z, num xUp, num yUp, num zUp);

  void setPosition(num x, num y, num z);

  void setVelocity(num x, num y, num z);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioNode {

  AudioContext get context();

  int get numberOfInputs();

  int get numberOfOutputs();

  void connect(AudioNode destination, int output, int input);

  void disconnect(int output);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioPannerNode extends AudioNode {

  static final int EQUALPOWER = 0;

  static final int HRTF = 1;

  static final int SOUNDFIELD = 2;

  AudioGain get coneGain();

  num get coneInnerAngle();

  void set coneInnerAngle(num value);

  num get coneOuterAngle();

  void set coneOuterAngle(num value);

  num get coneOuterGain();

  void set coneOuterGain(num value);

  AudioGain get distanceGain();

  int get distanceModel();

  void set distanceModel(int value);

  num get maxDistance();

  void set maxDistance(num value);

  int get panningModel();

  void set panningModel(int value);

  num get refDistance();

  void set refDistance(num value);

  num get rolloffFactor();

  void set rolloffFactor(num value);

  void setOrientation(num x, num y, num z);

  void setPosition(num x, num y, num z);

  void setVelocity(num x, num y, num z);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioParam {

  num get defaultValue();

  num get maxValue();

  num get minValue();

  String get name();

  int get units();

  num get value();

  void set value(num value);

  void cancelScheduledValues(num startTime);

  void exponentialRampToValueAtTime(num value, num time);

  void linearRampToValueAtTime(num value, num time);

  void setTargetValueAtTime(num targetValue, num time, num timeConstant);

  void setValueAtTime(num value, num time);

  void setValueCurveAtTime(Float32Array values, num time, num duration);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioProcessingEvent extends Event {

  AudioBuffer get inputBuffer();

  AudioBuffer get outputBuffer();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface AudioSourceNode extends AudioNode {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface BarProp {

  bool get visible();
}

interface BarInfo extends BarProp {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface BeforeLoadEvent extends Event {

  String get url();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface BiquadFilterNode extends AudioNode {

  static final int ALLPASS = 7;

  static final int BANDPASS = 2;

  static final int HIGHPASS = 1;

  static final int HIGHSHELF = 4;

  static final int LOWPASS = 0;

  static final int LOWSHELF = 3;

  static final int NOTCH = 6;

  static final int PEAKING = 5;

  AudioParam get Q();

  AudioParam get frequency();

  AudioParam get gain();

  int get type();

  void set type(int value);

  void getFrequencyResponse(Float32Array frequencyHz, Float32Array magResponse, Float32Array phaseResponse);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Blob {

  int get size();

  String get type();

  Blob webkitSlice([int start, int end, String contentType]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CDATASection extends Text {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSCharsetRule extends CSSRule {

  String get encoding();

  void set encoding(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSFontFaceRule extends CSSRule {

  CSSStyleDeclaration get style();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSImportRule extends CSSRule {

  String get href();

  MediaList get media();

  CSSStyleSheet get styleSheet();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSMediaRule extends CSSRule {

  CSSRuleList get cssRules();

  MediaList get media();

  void deleteRule(int index);

  int insertRule(String rule, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSPageRule extends CSSRule {

  String get selectorText();

  void set selectorText(String value);

  CSSStyleDeclaration get style();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSPrimitiveValue extends CSSValue {

  static final int CSS_ATTR = 22;

  static final int CSS_CM = 6;

  static final int CSS_COUNTER = 23;

  static final int CSS_DEG = 11;

  static final int CSS_DIMENSION = 18;

  static final int CSS_EMS = 3;

  static final int CSS_EXS = 4;

  static final int CSS_GRAD = 13;

  static final int CSS_HZ = 16;

  static final int CSS_IDENT = 21;

  static final int CSS_IN = 8;

  static final int CSS_KHZ = 17;

  static final int CSS_MM = 7;

  static final int CSS_MS = 14;

  static final int CSS_NUMBER = 1;

  static final int CSS_PC = 10;

  static final int CSS_PERCENTAGE = 2;

  static final int CSS_PT = 9;

  static final int CSS_PX = 5;

  static final int CSS_RAD = 12;

  static final int CSS_RECT = 24;

  static final int CSS_RGBCOLOR = 25;

  static final int CSS_S = 15;

  static final int CSS_STRING = 19;

  static final int CSS_UNKNOWN = 0;

  static final int CSS_URI = 20;

  int get primitiveType();

  Counter getCounterValue();

  num getFloatValue(int unitType);

  RGBColor getRGBColorValue();

  Rect getRectValue();

  String getStringValue();

  void setFloatValue(int unitType, num floatValue);

  void setStringValue(int stringType, String stringValue);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSRule {

  static final int CHARSET_RULE = 2;

  static final int FONT_FACE_RULE = 5;

  static final int IMPORT_RULE = 3;

  static final int MEDIA_RULE = 4;

  static final int PAGE_RULE = 6;

  static final int STYLE_RULE = 1;

  static final int UNKNOWN_RULE = 0;

  static final int WEBKIT_KEYFRAMES_RULE = 8;

  static final int WEBKIT_KEYFRAME_RULE = 9;

  static final int WEBKIT_REGION_RULE = 10;

  String get cssText();

  void set cssText(String value);

  CSSRule get parentRule();

  CSSStyleSheet get parentStyleSheet();

  int get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSRuleList {

  int get length();

  CSSRule item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSStyleDeclaration {

  String get cssText();

  void set cssText(String value);

  int get length();

  CSSRule get parentRule();

  CSSValue getPropertyCSSValue(String propertyName);

  String getPropertyPriority(String propertyName);

  String getPropertyShorthand(String propertyName);

  String getPropertyValue(String propertyName);

  bool isPropertyImplicit(String propertyName);

  String item(int index);

  String removeProperty(String propertyName);

  void setProperty(String propertyName, String value, [String priority]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSStyleRule extends CSSRule {

  String get selectorText();

  void set selectorText(String value);

  CSSStyleDeclaration get style();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSStyleSheet extends StyleSheet {

  CSSRuleList get cssRules();

  CSSRule get ownerRule();

  CSSRuleList get rules();

  int addRule(String selector, String style, [int index]);

  void deleteRule(int index);

  int insertRule(String rule, int index);

  void removeRule(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSUnknownRule extends CSSRule {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSValue {

  static final int CSS_CUSTOM = 3;

  static final int CSS_INHERIT = 0;

  static final int CSS_PRIMITIVE_VALUE = 1;

  static final int CSS_VALUE_LIST = 2;

  String get cssText();

  void set cssText(String value);

  int get cssValueType();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CSSValueList extends CSSValue {

  int get length();

  CSSValue item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CanvasGradient {

  void addColorStop(num offset, String color);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CanvasPattern {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CanvasPixelArray extends List<int> {

  int get length();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CanvasRenderingContext {

  HTMLCanvasElement get canvas();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CanvasRenderingContext2D extends CanvasRenderingContext {

  Dynamic get fillStyle();

  void set fillStyle(Dynamic value);

  String get font();

  void set font(String value);

  num get globalAlpha();

  void set globalAlpha(num value);

  String get globalCompositeOperation();

  void set globalCompositeOperation(String value);

  String get lineCap();

  void set lineCap(String value);

  String get lineJoin();

  void set lineJoin(String value);

  num get lineWidth();

  void set lineWidth(num value);

  num get miterLimit();

  void set miterLimit(num value);

  num get shadowBlur();

  void set shadowBlur(num value);

  String get shadowColor();

  void set shadowColor(String value);

  num get shadowOffsetX();

  void set shadowOffsetX(num value);

  num get shadowOffsetY();

  void set shadowOffsetY(num value);

  Dynamic get strokeStyle();

  void set strokeStyle(Dynamic value);

  String get textAlign();

  void set textAlign(String value);

  String get textBaseline();

  void set textBaseline(String value);

  List get webkitLineDash();

  void set webkitLineDash(List value);

  num get webkitLineDashOffset();

  void set webkitLineDashOffset(num value);

  void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise);

  void arcTo(num x1, num y1, num x2, num y2, num radius);

  void beginPath();

  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y);

  void clearRect(num x, num y, num width, num height);

  void clearShadow();

  void clip();

  void closePath();

  ImageData createImageData(var imagedata_OR_sw, [num sh]);

  CanvasGradient createLinearGradient(num x0, num y0, num x1, num y1);

  CanvasPattern createPattern(var canvas_OR_image, String repetitionType);

  CanvasGradient createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1);

  void drawImage(var canvas_OR_image_OR_video, num sx_OR_x, num sy_OR_y, [num sw_OR_width, num height_OR_sh, num dx, num dy, num dw, num dh]);

  void drawImageFromRect(HTMLImageElement image, [num sx, num sy, num sw, num sh, num dx, num dy, num dw, num dh, String compositeOperation]);

  void fill();

  void fillRect(num x, num y, num width, num height);

  void fillText(String text, num x, num y, [num maxWidth]);

  ImageData getImageData(num sx, num sy, num sw, num sh);

  bool isPointInPath(num x, num y);

  void lineTo(num x, num y);

  TextMetrics measureText(String text);

  void moveTo(num x, num y);

  void putImageData(ImageData imagedata, num dx, num dy, [num dirtyX, num dirtyY, num dirtyWidth, num dirtyHeight]);

  void quadraticCurveTo(num cpx, num cpy, num x, num y);

  void rect(num x, num y, num width, num height);

  void restore();

  void rotate(num angle);

  void save();

  void scale(num sx, num sy);

  void setAlpha(num alpha);

  void setCompositeOperation(String compositeOperation);

  void setFillColor(var c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]);

  void setLineCap(String cap);

  void setLineJoin(String join);

  void setLineWidth(num width);

  void setMiterLimit(num limit);

  void setShadow(num width, num height, num blur, [var c_OR_color_OR_grayLevel_OR_r, num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]);

  void setStrokeColor(var c_OR_color_OR_grayLevel_OR_r, [num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]);

  void setTransform(num m11, num m12, num m21, num m22, num dx, num dy);

  void stroke();

  void strokeRect(num x, num y, num width, num height, [num lineWidth]);

  void strokeText(String text, num x, num y, [num maxWidth]);

  void transform(num m11, num m12, num m21, num m22, num dx, num dy);

  void translate(num tx, num ty);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CharacterData extends Node {

  String get data();

  void set data(String value);

  int get length();

  void appendData(String data);

  void deleteData(int offset, int length);

  void insertData(int offset, String data);

  void replaceData(int offset, int length, String data);

  String substringData(int offset, int length);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ClientRect {

  num get bottom();

  num get height();

  num get left();

  num get right();

  num get top();

  num get width();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ClientRectList {

  int get length();

  ClientRect item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Clipboard {

  String get dropEffect();

  void set dropEffect(String value);

  String get effectAllowed();

  void set effectAllowed(String value);

  FileList get files();

  DataTransferItemList get items();

  List get types();

  void clearData([String type]);

  void getData(String type);

  bool setData(String type, String data);

  void setDragImage(HTMLImageElement image, int x, int y);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CloseEvent extends Event {

  int get code();

  String get reason();

  bool get wasClean();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Comment extends CharacterData {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CompositionEvent extends UIEvent {

  String get data();

  void initCompositionEvent(String typeArg, bool canBubbleArg, bool cancelableArg, DOMWindow viewArg, String dataArg);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Console {

  MemoryInfo get memory();

  List get profiles();

  void assertCondition(bool condition);

  void count();

  void debug(Object arg);

  void dir();

  void dirxml();

  void error(Object arg);

  void group();

  void groupCollapsed();

  void groupEnd();

  void info(Object arg);

  void log(Object arg);

  void markTimeline();

  void profile(String title);

  void profileEnd(String title);

  void time(String title);

  void timeEnd(String title);

  void timeStamp();

  void trace(Object arg);

  void warn(Object arg);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ConvolverNode extends AudioNode {

  AudioBuffer get buffer();

  void set buffer(AudioBuffer value);

  bool get normalize();

  void set normalize(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Coordinates {

  num get accuracy();

  num get altitude();

  num get altitudeAccuracy();

  num get heading();

  num get latitude();

  num get longitude();

  num get speed();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Counter {

  String get identifier();

  String get listStyle();

  String get separator();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Crypto {

  void getRandomValues(ArrayBufferView array);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface CustomEvent extends Event {

  Object get detail();

  void initCustomEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object detailArg);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ApplicationCache extends EventTarget {

  int get status();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  void swapCache();

  void update();
}

interface DOMApplicationCache extends ApplicationCache {

  static final int CHECKING = 2;

  static final int DOWNLOADING = 3;

  static final int IDLE = 1;

  static final int OBSOLETE = 5;

  static final int UNCACHED = 0;

  static final int UPDATEREADY = 4;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMException {

  static final int ABORT_ERR = 20;

  static final int DATA_CLONE_ERR = 25;

  static final int DOMSTRING_SIZE_ERR = 2;

  static final int HIERARCHY_REQUEST_ERR = 3;

  static final int INDEX_SIZE_ERR = 1;

  static final int INUSE_ATTRIBUTE_ERR = 10;

  static final int INVALID_ACCESS_ERR = 15;

  static final int INVALID_CHARACTER_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 13;

  static final int INVALID_NODE_TYPE_ERR = 24;

  static final int INVALID_STATE_ERR = 11;

  static final int NAMESPACE_ERR = 14;

  static final int NETWORK_ERR = 19;

  static final int NOT_FOUND_ERR = 8;

  static final int NOT_SUPPORTED_ERR = 9;

  static final int NO_DATA_ALLOWED_ERR = 6;

  static final int NO_MODIFICATION_ALLOWED_ERR = 7;

  static final int QUOTA_EXCEEDED_ERR = 22;

  static final int SECURITY_ERR = 18;

  static final int SYNTAX_ERR = 12;

  static final int TIMEOUT_ERR = 23;

  static final int TYPE_MISMATCH_ERR = 17;

  static final int URL_MISMATCH_ERR = 21;

  static final int VALIDATION_ERR = 16;

  static final int WRONG_DOCUMENT_ERR = 4;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMFileSystem {

  String get name();

  DirectoryEntry get root();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMFileSystemSync {

  String get name();

  DirectoryEntrySync get root();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FormData {

  void append(String name, String value, String filename);
}

interface DOMFormData extends FormData {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMImplementation {

  CSSStyleSheet createCSSStyleSheet(String title, String media);

  Document createDocument(String namespaceURI, String qualifiedName, DocumentType doctype);

  DocumentType createDocumentType(String qualifiedName, String publicId, String systemId);

  HTMLDocument createHTMLDocument(String title);

  bool hasFeature(String feature, String version);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMMimeType {

  String get description();

  DOMPlugin get enabledPlugin();

  String get suffixes();

  String get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMMimeTypeArray {

  int get length();

  DOMMimeType item(int index);

  DOMMimeType namedItem(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMParser {

  Document parseFromString(String str, String contentType);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMPlugin {

  String get description();

  String get filename();

  int get length();

  String get name();

  DOMMimeType item(int index);

  DOMMimeType namedItem(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMPluginArray {

  int get length();

  DOMPlugin item(int index);

  DOMPlugin namedItem(String name);

  void refresh(bool reload);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Selection {

  Node get anchorNode();

  int get anchorOffset();

  Node get baseNode();

  int get baseOffset();

  Node get extentNode();

  int get extentOffset();

  Node get focusNode();

  int get focusOffset();

  bool get isCollapsed();

  int get rangeCount();

  String get type();

  void addRange(Range range);

  void collapse(Node node, int index);

  void collapseToEnd();

  void collapseToStart();

  bool containsNode(Node node, bool allowPartial);

  void deleteFromDocument();

  void empty();

  void extend(Node node, int offset);

  Range getRangeAt(int index);

  void modify(String alter, String direction, String granularity);

  void removeAllRanges();

  void selectAllChildren(Node node);

  void setBaseAndExtent(Node baseNode, int baseOffset, Node extentNode, int extentOffset);

  void setPosition(Node node, int offset);

  String toString();
}

interface DOMSelection extends Selection {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMSettableTokenList extends DOMTokenList {

  String get value();

  void set value(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMTokenList {

  int get length();

  void add(String token);

  bool contains(String token);

  String item(int index);

  void remove(String token);

  String toString();

  bool toggle(String token);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DOMURL {

  String createObjectURL(Blob blob);

  void revokeObjectURL(String url);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Window extends EventTarget {

  DOMApplicationCache get applicationCache();

  Navigator get clientInformation();

  void set clientInformation(Navigator value);

  bool get closed();

  Console get console();

  void set console(Console value);

  Crypto get crypto();

  String get defaultStatus();

  void set defaultStatus(String value);

  String get defaultstatus();

  void set defaultstatus(String value);

  num get devicePixelRatio();

  void set devicePixelRatio(num value);

  Document get document();

  Event get event();

  void set event(Event value);

  Element get frameElement();

  DOMWindow get frames();

  void set frames(DOMWindow value);

  History get history();

  void set history(History value);

  int get innerHeight();

  void set innerHeight(int value);

  int get innerWidth();

  void set innerWidth(int value);

  int get length();

  void set length(int value);

  Storage get localStorage();

  Location get location();

  void set location(Location value);

  BarInfo get locationbar();

  void set locationbar(BarInfo value);

  BarInfo get menubar();

  void set menubar(BarInfo value);

  String get name();

  void set name(String value);

  Navigator get navigator();

  void set navigator(Navigator value);

  bool get offscreenBuffering();

  void set offscreenBuffering(bool value);

  DOMWindow get opener();

  void set opener(DOMWindow value);

  int get outerHeight();

  void set outerHeight(int value);

  int get outerWidth();

  void set outerWidth(int value);

  int get pageXOffset();

  int get pageYOffset();

  DOMWindow get parent();

  void set parent(DOMWindow value);

  Performance get performance();

  void set performance(Performance value);

  BarInfo get personalbar();

  void set personalbar(BarInfo value);

  Screen get screen();

  void set screen(Screen value);

  int get screenLeft();

  void set screenLeft(int value);

  int get screenTop();

  void set screenTop(int value);

  int get screenX();

  void set screenX(int value);

  int get screenY();

  void set screenY(int value);

  int get scrollX();

  void set scrollX(int value);

  int get scrollY();

  void set scrollY(int value);

  BarInfo get scrollbars();

  void set scrollbars(BarInfo value);

  DOMWindow get self();

  void set self(DOMWindow value);

  Storage get sessionStorage();

  String get status();

  void set status(String value);

  BarInfo get statusbar();

  void set statusbar(BarInfo value);

  StyleMedia get styleMedia();

  BarInfo get toolbar();

  void set toolbar(BarInfo value);

  DOMWindow get top();

  void set top(DOMWindow value);

  IDBFactory get webkitIndexedDB();

  NotificationCenter get webkitNotifications();

  StorageInfo get webkitStorageInfo();

  DOMURL get webkitURL();

  DOMWindow get window();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void alert(String message);

  String atob(String string);

  void blur();

  String btoa(String string);

  void captureEvents();

  void clearInterval(int handle);

  void clearTimeout(int handle);

  void close();

  bool confirm(String message);

  bool dispatchEvent(Event evt);

  bool find(String string, bool caseSensitive, bool backwards, bool wrap, bool wholeWord, bool searchInFrames, bool showDialog);

  void focus();

  CSSStyleDeclaration getComputedStyle(Element element, String pseudoElement);

  CSSRuleList getMatchedCSSRules(Element element, String pseudoElement);

  DOMSelection getSelection();

  MediaQueryList matchMedia(String query);

  void moveBy(num x, num y);

  void moveTo(num x, num y);

  DOMWindow open(String url, String name, [String options]);

  void postMessage(String message, String targetOrigin, [List messagePorts]);

  void print();

  String prompt(String message, String defaultValue);

  void releaseEvents();

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  void resizeBy(num x, num y);

  void resizeTo(num width, num height);

  void scroll(int x, int y);

  void scrollBy(int x, int y);

  void scrollTo(int x, int y);

  int setInterval(TimeoutHandler handler, int timeout);

  int setTimeout(TimeoutHandler handler, int timeout);

  Object showModalDialog(String url, [Object dialogArgs, String featureArgs]);

  void stop();

  void webkitCancelAnimationFrame(int id);

  void webkitCancelRequestAnimationFrame(int id);

  WebKitPoint webkitConvertPointFromNodeToPage(Node node, WebKitPoint p);

  WebKitPoint webkitConvertPointFromPageToNode(Node node, WebKitPoint p);

  void webkitPostMessage(String message, String targetOrigin, [List transferList]);

  int webkitRequestAnimationFrame(RequestAnimationFrameCallback callback, Element element);

  void webkitRequestFileSystem(int type, int size, FileSystemCallback successCallback, [ErrorCallback errorCallback]);

  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback, ErrorCallback errorCallback]);
}

interface DOMWindow extends Window {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DataTransferItem {

  String get kind();

  String get type();

  Blob getAsFile();

  void getAsString(StringCallback callback);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DataTransferItemList {

  int get length();

  void add(String data, String type);

  void clear();

  DataTransferItem item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DataView extends ArrayBufferView {

  num getFloat32(int byteOffset, [bool littleEndian]);

  num getFloat64(int byteOffset, [bool littleEndian]);

  int getInt16(int byteOffset, [bool littleEndian]);

  int getInt32(int byteOffset, [bool littleEndian]);

  Object getInt8();

  int getUint16(int byteOffset, [bool littleEndian]);

  int getUint32(int byteOffset, [bool littleEndian]);

  Object getUint8();

  void setFloat32(int byteOffset, num value, [bool littleEndian]);

  void setFloat64(int byteOffset, num value, [bool littleEndian]);

  void setInt16(int byteOffset, int value, [bool littleEndian]);

  void setInt32(int byteOffset, int value, [bool littleEndian]);

  void setInt8();

  void setUint16(int byteOffset, int value, [bool littleEndian]);

  void setUint32(int byteOffset, int value, [bool littleEndian]);

  void setUint8();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Database {

  String get version();

  void changeVersion(String oldVersion, String newVersion, [SQLTransactionCallback callback, SQLTransactionErrorCallback errorCallback, VoidCallback successCallback]);

  void readTransaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback, VoidCallback successCallback]);

  void transaction(SQLTransactionCallback callback, [SQLTransactionErrorCallback errorCallback, VoidCallback successCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool DatabaseCallback(var database);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DatabaseSync {

  String get lastErrorMessage();

  String get version();

  void changeVersion(String oldVersion, String newVersion, [SQLTransactionSyncCallback callback]);

  void readTransaction(SQLTransactionSyncCallback callback);

  void transaction(SQLTransactionSyncCallback callback);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DedicatedWorkerGlobalScope extends WorkerContext {

  EventListener get onmessage();

  void set onmessage(EventListener value);

  void postMessage(Object message, [List messagePorts]);

  void webkitPostMessage(Object message, [List transferList]);
}

interface DedicatedWorkerContext extends DedicatedWorkerGlobalScope {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DelayNode extends AudioNode {

  AudioParam get delayTime();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DeviceMotionEvent extends Event {

  num get interval();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DeviceOrientationEvent extends Event {

  num get alpha();

  num get beta();

  num get gamma();

  void initDeviceOrientationEvent(String type, bool bubbles, bool cancelable, num alpha, num beta, num gamma);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DirectoryEntry extends Entry {

  DirectoryReader createReader();

  void getDirectory(String path, [Object flags, EntryCallback successCallback, ErrorCallback errorCallback]);

  void getFile(String path, [Object flags, EntryCallback successCallback, ErrorCallback errorCallback]);

  void removeRecursively(VoidCallback successCallback, [ErrorCallback errorCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DirectoryEntrySync extends EntrySync {

  DirectoryReaderSync createReader();

  DirectoryEntrySync getDirectory(String path, Object flags);

  FileEntrySync getFile(String path, Object flags);

  void removeRecursively();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DirectoryReader {

  void readEntries(EntriesCallback successCallback, [ErrorCallback errorCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DirectoryReaderSync {

  EntryArraySync readEntries();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Document extends Node, NodeSelector {

  String get URL();

  HTMLCollection get anchors();

  HTMLCollection get applets();

  HTMLElement get body();

  void set body(HTMLElement value);

  String get characterSet();

  String get charset();

  void set charset(String value);

  String get compatMode();

  String get cookie();

  void set cookie(String value);

  String get defaultCharset();

  DOMWindow get defaultView();

  DocumentType get doctype();

  Element get documentElement();

  String get documentURI();

  void set documentURI(String value);

  String get domain();

  void set domain(String value);

  HTMLCollection get forms();

  HTMLHeadElement get head();

  HTMLCollection get images();

  DOMImplementation get implementation();

  String get inputEncoding();

  String get lastModified();

  HTMLCollection get links();

  Location get location();

  void set location(Location value);

  String get preferredStylesheetSet();

  String get readyState();

  String get referrer();

  String get selectedStylesheetSet();

  void set selectedStylesheetSet(String value);

  StyleSheetList get styleSheets();

  String get title();

  void set title(String value);

  Element get webkitCurrentFullScreenElement();

  bool get webkitFullScreenKeyboardInputAllowed();

  bool get webkitHidden();

  bool get webkitIsFullScreen();

  String get webkitVisibilityState();

  String get xmlEncoding();

  bool get xmlStandalone();

  void set xmlStandalone(bool value);

  String get xmlVersion();

  void set xmlVersion(String value);

  Node adoptNode(Node source);

  Range caretRangeFromPoint(int x, int y);

  Attr createAttribute(String name);

  Attr createAttributeNS(String namespaceURI, String qualifiedName);

  CDATASection createCDATASection(String data);

  Comment createComment(String data);

  DocumentFragment createDocumentFragment();

  Element createElement(String tagName);

  Element createElementNS(String namespaceURI, String qualifiedName);

  EntityReference createEntityReference(String name);

  Event createEvent(String eventType);

  XPathExpression createExpression(String expression, XPathNSResolver resolver);

  XPathNSResolver createNSResolver(Node nodeResolver);

  NodeIterator createNodeIterator(Node root, int whatToShow, NodeFilter filter, bool expandEntityReferences);

  ProcessingInstruction createProcessingInstruction(String target, String data);

  Range createRange();

  Text createTextNode(String data);

  Touch createTouch(DOMWindow window, EventTarget target, int identifier, int pageX, int pageY, int screenX, int screenY, int webkitRadiusX, int webkitRadiusY, num webkitRotationAngle, num webkitForce);

  TouchList createTouchList();

  TreeWalker createTreeWalker(Node root, int whatToShow, NodeFilter filter, bool expandEntityReferences);

  Element elementFromPoint(int x, int y);

  XPathResult evaluate(String expression, Node contextNode, XPathNSResolver resolver, int type, XPathResult inResult);

  bool execCommand(String command, bool userInterface, String value);

  Object getCSSCanvasContext(String contextId, String name, int width, int height);

  Element getElementById(String elementId);

  NodeList getElementsByClassName(String tagname);

  NodeList getElementsByName(String elementName);

  NodeList getElementsByTagName(String tagname);

  NodeList getElementsByTagNameNS(String namespaceURI, String localName);

  CSSStyleDeclaration getOverrideStyle(Element element, String pseudoElement);

  DOMSelection getSelection();

  Node importNode(Node importedNode, [bool deep]);

  bool queryCommandEnabled(String command);

  bool queryCommandIndeterm(String command);

  bool queryCommandState(String command);

  bool queryCommandSupported(String command);

  String queryCommandValue(String command);

  Element querySelector(String selectors);

  NodeList querySelectorAll(String selectors);

  void webkitCancelFullScreen();

  WebKitNamedFlow webkitGetFlowByName(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DocumentFragment extends Node, NodeSelector {

  Element querySelector(String selectors);

  NodeList querySelectorAll(String selectors);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DocumentType extends Node {

  NamedNodeMap get entities();

  String get internalSubset();

  String get name();

  NamedNodeMap get notations();

  String get publicId();

  String get systemId();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface DynamicsCompressorNode extends AudioNode {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Element extends Node, NodeSelector, ElementTraversal {

  static final int ALLOW_KEYBOARD_INPUT = 1;

  int get childElementCount();

  int get clientHeight();

  int get clientLeft();

  int get clientTop();

  int get clientWidth();

  Element get firstElementChild();

  Element get lastElementChild();

  Element get nextElementSibling();

  int get offsetHeight();

  int get offsetLeft();

  Element get offsetParent();

  int get offsetTop();

  int get offsetWidth();

  Element get previousElementSibling();

  int get scrollHeight();

  int get scrollLeft();

  void set scrollLeft(int value);

  int get scrollTop();

  void set scrollTop(int value);

  int get scrollWidth();

  CSSStyleDeclaration get style();

  String get tagName();

  void blur();

  void focus();

  String getAttribute(String name);

  String getAttributeNS(String namespaceURI, String localName);

  Attr getAttributeNode(String name);

  Attr getAttributeNodeNS(String namespaceURI, String localName);

  ClientRect getBoundingClientRect();

  ClientRectList getClientRects();

  NodeList getElementsByClassName(String name);

  NodeList getElementsByTagName(String name);

  NodeList getElementsByTagNameNS(String namespaceURI, String localName);

  bool hasAttribute(String name);

  bool hasAttributeNS(String namespaceURI, String localName);

  Element querySelector(String selectors);

  NodeList querySelectorAll(String selectors);

  void removeAttribute(String name);

  void removeAttributeNS(String namespaceURI, String localName);

  Attr removeAttributeNode(Attr oldAttr);

  void scrollByLines(int lines);

  void scrollByPages(int pages);

  void scrollIntoView([bool alignWithTop]);

  void scrollIntoViewIfNeeded([bool centerIfNeeded]);

  void setAttribute(String name, String value);

  void setAttributeNS(String namespaceURI, String qualifiedName, String value);

  Attr setAttributeNode(Attr newAttr);

  Attr setAttributeNodeNS(Attr newAttr);

  bool webkitMatchesSelector(String selectors);

  void webkitRequestFullScreen(int flags);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ElementTimeControl {

  void beginElement();

  void beginElementAt(num offset);

  void endElement();

  void endElementAt(num offset);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ElementTraversal {

  int get childElementCount();

  Element get firstElementChild();

  Element get lastElementChild();

  Element get nextElementSibling();

  Element get previousElementSibling();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Entity extends Node {

  String get notationName();

  String get publicId();

  String get systemId();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EntityReference extends Node {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool EntriesCallback(EntryArray entries);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Entry {

  DOMFileSystem get filesystem();

  String get fullPath();

  bool get isDirectory();

  bool get isFile();

  String get name();

  void copyTo(DirectoryEntry parent, [String name, EntryCallback successCallback, ErrorCallback errorCallback]);

  void getMetadata(MetadataCallback successCallback, [ErrorCallback errorCallback]);

  void getParent([EntryCallback successCallback, ErrorCallback errorCallback]);

  void moveTo(DirectoryEntry parent, [String name, EntryCallback successCallback, ErrorCallback errorCallback]);

  void remove(VoidCallback successCallback, [ErrorCallback errorCallback]);

  String toURL();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EntryArray {

  int get length();

  Entry item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EntryArraySync {

  int get length();

  EntrySync item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool EntryCallback(Entry entry);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EntrySync {

  DOMFileSystemSync get filesystem();

  String get fullPath();

  bool get isDirectory();

  bool get isFile();

  String get name();

  EntrySync copyTo(DirectoryEntrySync parent, String name);

  Metadata getMetadata();

  DirectoryEntrySync getParent();

  EntrySync moveTo(DirectoryEntrySync parent, String name);

  void remove();

  String toURL();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool ErrorCallback(FileError error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ErrorEvent extends Event {

  String get filename();

  int get lineno();

  String get message();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Event {

  static final int AT_TARGET = 2;

  static final int BLUR = 8192;

  static final int BUBBLING_PHASE = 3;

  static final int CAPTURING_PHASE = 1;

  static final int CHANGE = 32768;

  static final int CLICK = 64;

  static final int DBLCLICK = 128;

  static final int DRAGDROP = 2048;

  static final int FOCUS = 4096;

  static final int KEYDOWN = 256;

  static final int KEYPRESS = 1024;

  static final int KEYUP = 512;

  static final int MOUSEDOWN = 1;

  static final int MOUSEDRAG = 32;

  static final int MOUSEMOVE = 16;

  static final int MOUSEOUT = 8;

  static final int MOUSEOVER = 4;

  static final int MOUSEUP = 2;

  static final int SELECT = 16384;

  bool get bubbles();

  bool get cancelBubble();

  void set cancelBubble(bool value);

  bool get cancelable();

  Clipboard get clipboardData();

  EventTarget get currentTarget();

  bool get defaultPrevented();

  int get eventPhase();

  bool get returnValue();

  void set returnValue(bool value);

  EventTarget get srcElement();

  EventTarget get target();

  int get timeStamp();

  String get type();

  void initEvent(String eventTypeArg, bool canBubbleArg, bool cancelableArg);

  void preventDefault();

  void stopImmediatePropagation();

  void stopPropagation();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EventException {

  static final int DISPATCH_REQUEST_ERR = 1;

  static final int UNSPECIFIED_EVENT_TYPE_ERR = 0;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EventSource extends EventTarget {

  static final int CLOSED = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  String get URL();

  int get readyState();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void close();

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface EventTarget {

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event event);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface File extends Blob {

  String get fileName();

  int get fileSize();

  Date get lastModifiedDate();

  String get name();

  String get webkitRelativePath();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool FileCallback(File file);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileEntry extends Entry {

  void createWriter(FileWriterCallback successCallback, [ErrorCallback errorCallback]);

  void file(FileCallback successCallback, [ErrorCallback errorCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileEntrySync extends EntrySync {

  FileWriterSync createWriter();

  File file();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileError {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  int get code();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileException {

  static final int ABORT_ERR = 3;

  static final int ENCODING_ERR = 5;

  static final int INVALID_MODIFICATION_ERR = 9;

  static final int INVALID_STATE_ERR = 7;

  static final int NOT_FOUND_ERR = 1;

  static final int NOT_READABLE_ERR = 4;

  static final int NO_MODIFICATION_ALLOWED_ERR = 6;

  static final int PATH_EXISTS_ERR = 12;

  static final int QUOTA_EXCEEDED_ERR = 10;

  static final int SECURITY_ERR = 2;

  static final int SYNTAX_ERR = 8;

  static final int TYPE_MISMATCH_ERR = 11;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileList {

  int get length();

  File item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileReader default _FileReaderFactoryProvider {

  FileReader();

  static final int DONE = 2;

  static final int EMPTY = 0;

  static final int LOADING = 1;

  FileError get error();

  EventListener get onabort();

  void set onabort(EventListener value);

  EventListener get onerror();

  void set onerror(EventListener value);

  EventListener get onload();

  void set onload(EventListener value);

  EventListener get onloadend();

  void set onloadend(EventListener value);

  EventListener get onloadstart();

  void set onloadstart(EventListener value);

  EventListener get onprogress();

  void set onprogress(EventListener value);

  int get readyState();

  Object get result();

  void abort();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void readAsArrayBuffer(Blob blob);

  void readAsBinaryString(Blob blob);

  void readAsDataURL(Blob blob);

  void readAsText(Blob blob, [String encoding]);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileReaderSync {

  ArrayBuffer readAsArrayBuffer(Blob blob);

  String readAsBinaryString(Blob blob);

  String readAsDataURL(Blob blob);

  String readAsText(Blob blob, [String encoding]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool FileSystemCallback(DOMFileSystem fileSystem);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileWriter {

  static final int DONE = 2;

  static final int INIT = 0;

  static final int WRITING = 1;

  FileError get error();

  int get length();

  EventListener get onabort();

  void set onabort(EventListener value);

  EventListener get onerror();

  void set onerror(EventListener value);

  EventListener get onprogress();

  void set onprogress(EventListener value);

  EventListener get onwrite();

  void set onwrite(EventListener value);

  EventListener get onwriteend();

  void set onwriteend(EventListener value);

  EventListener get onwritestart();

  void set onwritestart(EventListener value);

  int get position();

  int get readyState();

  void abort();

  void seek(int position);

  void truncate(int size);

  void write(Blob data);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool FileWriterCallback(FileWriter fileWriter);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface FileWriterSync {

  int get length();

  int get position();

  void seek(int position);

  void truncate(int size);

  void write(Blob data);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Float32Array extends ArrayBufferView, List<num> default _TypedArrayFactoryProvider {

  Float32Array(int length);

  Float32Array.fromList(List<num> list);

  Float32Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 4;

  int get length();

  void setElements(Object array, [int offset]);

  Float32Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Float64Array extends ArrayBufferView, List<num> default _TypedArrayFactoryProvider {

  Float64Array(int length);

  Float64Array.fromList(List<num> list);

  Float64Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 8;

  int get length();

  void setElements(Object array, [int offset]);

  Float64Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Geolocation {

  void clearWatch(int watchId);

  void getCurrentPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback]);

  int watchPosition(PositionCallback successCallback, [PositionErrorCallback errorCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Geoposition {

  Coordinates get coords();

  int get timestamp();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLAllCollection {

  int get length();

  Node item(int index);

  Node namedItem(String name);

  NodeList tags(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLAnchorElement extends HTMLElement {

  String get charset();

  void set charset(String value);

  String get coords();

  void set coords(String value);

  String get download();

  void set download(String value);

  String get hash();

  void set hash(String value);

  String get host();

  void set host(String value);

  String get hostname();

  void set hostname(String value);

  String get href();

  void set href(String value);

  String get hreflang();

  void set hreflang(String value);

  String get name();

  void set name(String value);

  String get origin();

  String get pathname();

  void set pathname(String value);

  String get ping();

  void set ping(String value);

  String get port();

  void set port(String value);

  String get protocol();

  void set protocol(String value);

  String get rel();

  void set rel(String value);

  String get rev();

  void set rev(String value);

  String get search();

  void set search(String value);

  String get shape();

  void set shape(String value);

  String get target();

  void set target(String value);

  String get text();

  String get type();

  void set type(String value);

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLAppletElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get alt();

  void set alt(String value);

  String get archive();

  void set archive(String value);

  String get code();

  void set code(String value);

  String get codeBase();

  void set codeBase(String value);

  String get height();

  void set height(String value);

  String get hspace();

  void set hspace(String value);

  String get name();

  void set name(String value);

  String get object();

  void set object(String value);

  String get vspace();

  void set vspace(String value);

  String get width();

  void set width(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLAreaElement extends HTMLElement {

  String get alt();

  void set alt(String value);

  String get coords();

  void set coords(String value);

  String get hash();

  String get host();

  String get hostname();

  String get href();

  void set href(String value);

  bool get noHref();

  void set noHref(bool value);

  String get pathname();

  String get ping();

  void set ping(String value);

  String get port();

  String get protocol();

  String get search();

  String get shape();

  void set shape(String value);

  String get target();

  void set target(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLAudioElement extends HTMLMediaElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLBRElement extends HTMLElement {

  String get clear();

  void set clear(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLBaseElement extends HTMLElement {

  String get href();

  void set href(String value);

  String get target();

  void set target(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLBaseFontElement extends HTMLElement {

  String get color();

  void set color(String value);

  String get face();

  void set face(String value);

  int get size();

  void set size(int value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLBodyElement extends HTMLElement {

  String get aLink();

  void set aLink(String value);

  String get background();

  void set background(String value);

  String get bgColor();

  void set bgColor(String value);

  String get link();

  void set link(String value);

  String get text();

  void set text(String value);

  String get vLink();

  void set vLink(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLButtonElement extends HTMLElement {

  bool get autofocus();

  void set autofocus(bool value);

  bool get disabled();

  void set disabled(bool value);

  HTMLFormElement get form();

  String get formAction();

  void set formAction(String value);

  String get formEnctype();

  void set formEnctype(String value);

  String get formMethod();

  void set formMethod(String value);

  bool get formNoValidate();

  void set formNoValidate(bool value);

  String get formTarget();

  void set formTarget(String value);

  NodeList get labels();

  String get name();

  void set name(String value);

  String get type();

  String get validationMessage();

  ValidityState get validity();

  String get value();

  void set value(String value);

  bool get willValidate();

  bool checkValidity();

  void click();

  void setCustomValidity(String error);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLCanvasElement extends HTMLElement {

  int get height();

  void set height(int value);

  int get width();

  void set width(int value);

  Object getContext(String contextId);

  String toDataURL(String type);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLCollection extends List<Node> {

  int get length();

  Node item(int index);

  Node namedItem(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLDListElement extends HTMLElement {

  bool get compact();

  void set compact(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLDataListElement extends HTMLElement {

  HTMLCollection get options();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLDetailsElement extends HTMLElement {

  bool get open();

  void set open(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLDirectoryElement extends HTMLElement {

  bool get compact();

  void set compact(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLDivElement extends HTMLElement {

  String get align();

  void set align(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLDocument extends Document {

  Element get activeElement();

  String get alinkColor();

  void set alinkColor(String value);

  HTMLAllCollection get all();

  void set all(HTMLAllCollection value);

  String get bgColor();

  void set bgColor(String value);

  String get compatMode();

  String get designMode();

  void set designMode(String value);

  String get dir();

  void set dir(String value);

  HTMLCollection get embeds();

  String get fgColor();

  void set fgColor(String value);

  String get linkColor();

  void set linkColor(String value);

  HTMLCollection get plugins();

  HTMLCollection get scripts();

  String get vlinkColor();

  void set vlinkColor(String value);

  void captureEvents();

  void clear();

  void close();

  bool hasFocus();

  void open();

  void releaseEvents();

  void write(String text);

  void writeln(String text);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLElement extends Element {

  String get accessKey();

  void set accessKey(String value);

  HTMLCollection get children();

  DOMTokenList get classList();

  String get className();

  void set className(String value);

  String get contentEditable();

  void set contentEditable(String value);

  String get dir();

  void set dir(String value);

  bool get draggable();

  void set draggable(bool value);

  bool get hidden();

  void set hidden(bool value);

  String get id();

  void set id(String value);

  String get innerHTML();

  void set innerHTML(String value);

  String get innerText();

  void set innerText(String value);

  bool get isContentEditable();

  String get itemId();

  void set itemId(String value);

  DOMSettableTokenList get itemProp();

  DOMSettableTokenList get itemRef();

  bool get itemScope();

  void set itemScope(bool value);

  DOMSettableTokenList get itemType();

  Object get itemValue();

  void set itemValue(Object value);

  String get lang();

  void set lang(String value);

  String get outerHTML();

  void set outerHTML(String value);

  String get outerText();

  void set outerText(String value);

  bool get spellcheck();

  void set spellcheck(bool value);

  int get tabIndex();

  void set tabIndex(int value);

  String get title();

  void set title(String value);

  String get webkitdropzone();

  void set webkitdropzone(String value);

  Element insertAdjacentElement(String where, Element element);

  void insertAdjacentHTML(String where, String html);

  void insertAdjacentText(String where, String text);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLEmbedElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get height();

  void set height(String value);

  String get name();

  void set name(String value);

  String get src();

  void set src(String value);

  String get type();

  void set type(String value);

  String get width();

  void set width(String value);

  SVGDocument getSVGDocument();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLFieldSetElement extends HTMLElement {

  HTMLFormElement get form();

  String get validationMessage();

  ValidityState get validity();

  bool get willValidate();

  bool checkValidity();

  void setCustomValidity(String error);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLFontElement extends HTMLElement {

  String get color();

  void set color(String value);

  String get face();

  void set face(String value);

  String get size();

  void set size(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLFormElement extends HTMLElement {

  String get acceptCharset();

  void set acceptCharset(String value);

  String get action();

  void set action(String value);

  String get autocomplete();

  void set autocomplete(String value);

  HTMLCollection get elements();

  String get encoding();

  void set encoding(String value);

  String get enctype();

  void set enctype(String value);

  int get length();

  String get method();

  void set method(String value);

  String get name();

  void set name(String value);

  bool get noValidate();

  void set noValidate(bool value);

  String get target();

  void set target(String value);

  bool checkValidity();

  void reset();

  void submit();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLFrameElement extends HTMLElement {

  Document get contentDocument();

  DOMWindow get contentWindow();

  String get frameBorder();

  void set frameBorder(String value);

  int get height();

  String get location();

  void set location(String value);

  String get longDesc();

  void set longDesc(String value);

  String get marginHeight();

  void set marginHeight(String value);

  String get marginWidth();

  void set marginWidth(String value);

  String get name();

  void set name(String value);

  bool get noResize();

  void set noResize(bool value);

  String get scrolling();

  void set scrolling(String value);

  String get src();

  void set src(String value);

  int get width();

  SVGDocument getSVGDocument();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLFrameSetElement extends HTMLElement {

  String get cols();

  void set cols(String value);

  String get rows();

  void set rows(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLHRElement extends HTMLElement {

  String get align();

  void set align(String value);

  bool get noShade();

  void set noShade(bool value);

  String get size();

  void set size(String value);

  String get width();

  void set width(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLHeadElement extends HTMLElement {

  String get profile();

  void set profile(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLHeadingElement extends HTMLElement {

  String get align();

  void set align(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLHtmlElement extends HTMLElement {

  String get manifest();

  void set manifest(String value);

  String get version();

  void set version(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLIFrameElement extends HTMLElement {

  String get align();

  void set align(String value);

  Document get contentDocument();

  DOMWindow get contentWindow();

  String get frameBorder();

  void set frameBorder(String value);

  String get height();

  void set height(String value);

  String get longDesc();

  void set longDesc(String value);

  String get marginHeight();

  void set marginHeight(String value);

  String get marginWidth();

  void set marginWidth(String value);

  String get name();

  void set name(String value);

  String get sandbox();

  void set sandbox(String value);

  String get scrolling();

  void set scrolling(String value);

  String get src();

  void set src(String value);

  String get width();

  void set width(String value);

  SVGDocument getSVGDocument();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLImageElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get alt();

  void set alt(String value);

  String get border();

  void set border(String value);

  bool get complete();

  String get crossOrigin();

  void set crossOrigin(String value);

  int get height();

  void set height(int value);

  int get hspace();

  void set hspace(int value);

  bool get isMap();

  void set isMap(bool value);

  String get longDesc();

  void set longDesc(String value);

  String get lowsrc();

  void set lowsrc(String value);

  String get name();

  void set name(String value);

  int get naturalHeight();

  int get naturalWidth();

  String get src();

  void set src(String value);

  String get useMap();

  void set useMap(String value);

  int get vspace();

  void set vspace(int value);

  int get width();

  void set width(int value);

  int get x();

  int get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLInputElement extends HTMLElement {

  String get accept();

  void set accept(String value);

  String get align();

  void set align(String value);

  String get alt();

  void set alt(String value);

  String get autocomplete();

  void set autocomplete(String value);

  bool get autofocus();

  void set autofocus(bool value);

  bool get checked();

  void set checked(bool value);

  bool get defaultChecked();

  void set defaultChecked(bool value);

  String get defaultValue();

  void set defaultValue(String value);

  String get dirName();

  void set dirName(String value);

  bool get disabled();

  void set disabled(bool value);

  FileList get files();

  HTMLFormElement get form();

  String get formAction();

  void set formAction(String value);

  String get formEnctype();

  void set formEnctype(String value);

  String get formMethod();

  void set formMethod(String value);

  bool get formNoValidate();

  void set formNoValidate(bool value);

  String get formTarget();

  void set formTarget(String value);

  bool get incremental();

  void set incremental(bool value);

  bool get indeterminate();

  void set indeterminate(bool value);

  NodeList get labels();

  HTMLElement get list();

  String get max();

  void set max(String value);

  int get maxLength();

  void set maxLength(int value);

  String get min();

  void set min(String value);

  bool get multiple();

  void set multiple(bool value);

  String get name();

  void set name(String value);

  String get pattern();

  void set pattern(String value);

  String get placeholder();

  void set placeholder(String value);

  bool get readOnly();

  void set readOnly(bool value);

  bool get required();

  void set required(bool value);

  HTMLOptionElement get selectedOption();

  String get selectionDirection();

  void set selectionDirection(String value);

  int get selectionEnd();

  void set selectionEnd(int value);

  int get selectionStart();

  void set selectionStart(int value);

  int get size();

  void set size(int value);

  String get src();

  void set src(String value);

  String get step();

  void set step(String value);

  String get type();

  void set type(String value);

  String get useMap();

  void set useMap(String value);

  String get validationMessage();

  ValidityState get validity();

  String get value();

  void set value(String value);

  Date get valueAsDate();

  void set valueAsDate(Date value);

  num get valueAsNumber();

  void set valueAsNumber(num value);

  bool get webkitGrammar();

  void set webkitGrammar(bool value);

  bool get webkitSpeech();

  void set webkitSpeech(bool value);

  bool get webkitdirectory();

  void set webkitdirectory(bool value);

  bool get willValidate();

  bool checkValidity();

  void click();

  void select();

  void setCustomValidity(String error);

  void setSelectionRange(int start, int end, [String direction]);

  void stepDown([int n]);

  void stepUp([int n]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLIsIndexElement extends HTMLInputElement {

  HTMLFormElement get form();

  String get prompt();

  void set prompt(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLKeygenElement extends HTMLElement {

  bool get autofocus();

  void set autofocus(bool value);

  String get challenge();

  void set challenge(String value);

  bool get disabled();

  void set disabled(bool value);

  HTMLFormElement get form();

  String get keytype();

  void set keytype(String value);

  NodeList get labels();

  String get name();

  void set name(String value);

  String get type();

  String get validationMessage();

  ValidityState get validity();

  bool get willValidate();

  bool checkValidity();

  void setCustomValidity(String error);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLLIElement extends HTMLElement {

  String get type();

  void set type(String value);

  int get value();

  void set value(int value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLLabelElement extends HTMLElement {

  HTMLElement get control();

  HTMLFormElement get form();

  String get htmlFor();

  void set htmlFor(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLLegendElement extends HTMLElement {

  String get align();

  void set align(String value);

  HTMLFormElement get form();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLLinkElement extends HTMLElement {

  String get charset();

  void set charset(String value);

  bool get disabled();

  void set disabled(bool value);

  String get href();

  void set href(String value);

  String get hreflang();

  void set hreflang(String value);

  String get media();

  void set media(String value);

  String get rel();

  void set rel(String value);

  String get rev();

  void set rev(String value);

  StyleSheet get sheet();

  DOMSettableTokenList get sizes();

  void set sizes(DOMSettableTokenList value);

  String get target();

  void set target(String value);

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLMapElement extends HTMLElement {

  HTMLCollection get areas();

  String get name();

  void set name(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLMarqueeElement extends HTMLElement {

  String get behavior();

  void set behavior(String value);

  String get bgColor();

  void set bgColor(String value);

  String get direction();

  void set direction(String value);

  String get height();

  void set height(String value);

  int get hspace();

  void set hspace(int value);

  int get loop();

  void set loop(int value);

  int get scrollAmount();

  void set scrollAmount(int value);

  int get scrollDelay();

  void set scrollDelay(int value);

  bool get trueSpeed();

  void set trueSpeed(bool value);

  int get vspace();

  void set vspace(int value);

  String get width();

  void set width(String value);

  void start();

  void stop();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLMediaElement extends HTMLElement {

  static final int EOS_DECODE_ERR = 2;

  static final int EOS_NETWORK_ERR = 1;

  static final int EOS_NO_ERROR = 0;

  static final int HAVE_CURRENT_DATA = 2;

  static final int HAVE_ENOUGH_DATA = 4;

  static final int HAVE_FUTURE_DATA = 3;

  static final int HAVE_METADATA = 1;

  static final int HAVE_NOTHING = 0;

  static final int NETWORK_EMPTY = 0;

  static final int NETWORK_IDLE = 1;

  static final int NETWORK_LOADING = 2;

  static final int NETWORK_NO_SOURCE = 3;

  static final int SOURCE_CLOSED = 0;

  static final int SOURCE_ENDED = 2;

  static final int SOURCE_OPEN = 1;

  bool get autoplay();

  void set autoplay(bool value);

  TimeRanges get buffered();

  MediaController get controller();

  void set controller(MediaController value);

  bool get controls();

  void set controls(bool value);

  String get currentSrc();

  num get currentTime();

  void set currentTime(num value);

  bool get defaultMuted();

  void set defaultMuted(bool value);

  num get defaultPlaybackRate();

  void set defaultPlaybackRate(num value);

  num get duration();

  bool get ended();

  MediaError get error();

  num get initialTime();

  bool get loop();

  void set loop(bool value);

  String get mediaGroup();

  void set mediaGroup(String value);

  bool get muted();

  void set muted(bool value);

  int get networkState();

  bool get paused();

  num get playbackRate();

  void set playbackRate(num value);

  TimeRanges get played();

  String get preload();

  void set preload(String value);

  int get readyState();

  TimeRanges get seekable();

  bool get seeking();

  String get src();

  void set src(String value);

  num get startTime();

  TextTrackList get textTracks();

  num get volume();

  void set volume(num value);

  int get webkitAudioDecodedByteCount();

  bool get webkitClosedCaptionsVisible();

  void set webkitClosedCaptionsVisible(bool value);

  bool get webkitHasClosedCaptions();

  String get webkitMediaSourceURL();

  bool get webkitPreservesPitch();

  void set webkitPreservesPitch(bool value);

  int get webkitSourceState();

  int get webkitVideoDecodedByteCount();

  TextTrack addTrack(String kind, [String label, String language]);

  String canPlayType(String type);

  void load();

  void pause();

  void play();

  void webkitSourceAppend(Uint8Array data);

  void webkitSourceEndOfStream(int status);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLMenuElement extends HTMLElement {

  bool get compact();

  void set compact(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLMetaElement extends HTMLElement {

  String get content();

  void set content(String value);

  String get httpEquiv();

  void set httpEquiv(String value);

  String get name();

  void set name(String value);

  String get scheme();

  void set scheme(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLMeterElement extends HTMLElement {

  HTMLFormElement get form();

  num get high();

  void set high(num value);

  NodeList get labels();

  num get low();

  void set low(num value);

  num get max();

  void set max(num value);

  num get min();

  void set min(num value);

  num get optimum();

  void set optimum(num value);

  num get value();

  void set value(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLModElement extends HTMLElement {

  String get cite();

  void set cite(String value);

  String get dateTime();

  void set dateTime(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLOListElement extends HTMLElement {

  bool get compact();

  void set compact(bool value);

  bool get reversed();

  void set reversed(bool value);

  int get start();

  void set start(int value);

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLObjectElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get archive();

  void set archive(String value);

  String get border();

  void set border(String value);

  String get code();

  void set code(String value);

  String get codeBase();

  void set codeBase(String value);

  String get codeType();

  void set codeType(String value);

  Document get contentDocument();

  String get data();

  void set data(String value);

  bool get declare();

  void set declare(bool value);

  HTMLFormElement get form();

  String get height();

  void set height(String value);

  int get hspace();

  void set hspace(int value);

  String get name();

  void set name(String value);

  String get standby();

  void set standby(String value);

  String get type();

  void set type(String value);

  String get useMap();

  void set useMap(String value);

  String get validationMessage();

  ValidityState get validity();

  int get vspace();

  void set vspace(int value);

  String get width();

  void set width(String value);

  bool get willValidate();

  bool checkValidity();

  SVGDocument getSVGDocument();

  void setCustomValidity(String error);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLOptGroupElement extends HTMLElement {

  bool get disabled();

  void set disabled(bool value);

  String get label();

  void set label(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLOptionElement extends HTMLElement {

  bool get defaultSelected();

  void set defaultSelected(bool value);

  bool get disabled();

  void set disabled(bool value);

  HTMLFormElement get form();

  int get index();

  String get label();

  void set label(String value);

  bool get selected();

  void set selected(bool value);

  String get text();

  void set text(String value);

  String get value();

  void set value(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLOptionsCollection extends HTMLCollection {

  int get length();

  void set length(int value);

  int get selectedIndex();

  void set selectedIndex(int value);

  void remove(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLOutputElement extends HTMLElement {

  String get defaultValue();

  void set defaultValue(String value);

  HTMLFormElement get form();

  DOMSettableTokenList get htmlFor();

  void set htmlFor(DOMSettableTokenList value);

  NodeList get labels();

  String get name();

  void set name(String value);

  String get type();

  String get validationMessage();

  ValidityState get validity();

  String get value();

  void set value(String value);

  bool get willValidate();

  bool checkValidity();

  void setCustomValidity(String error);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLParagraphElement extends HTMLElement {

  String get align();

  void set align(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLParamElement extends HTMLElement {

  String get name();

  void set name(String value);

  String get type();

  void set type(String value);

  String get value();

  void set value(String value);

  String get valueType();

  void set valueType(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLPreElement extends HTMLElement {

  int get width();

  void set width(int value);

  bool get wrap();

  void set wrap(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLProgressElement extends HTMLElement {

  HTMLFormElement get form();

  NodeList get labels();

  num get max();

  void set max(num value);

  num get position();

  num get value();

  void set value(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLPropertiesCollection extends HTMLCollection {

  int get length();

  Node item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLQuoteElement extends HTMLElement {

  String get cite();

  void set cite(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLScriptElement extends HTMLElement {

  bool get async();

  void set async(bool value);

  String get charset();

  void set charset(String value);

  bool get defer();

  void set defer(bool value);

  String get event();

  void set event(String value);

  String get htmlFor();

  void set htmlFor(String value);

  String get src();

  void set src(String value);

  String get text();

  void set text(String value);

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLSelectElement extends HTMLElement {

  bool get autofocus();

  void set autofocus(bool value);

  bool get disabled();

  void set disabled(bool value);

  HTMLFormElement get form();

  NodeList get labels();

  int get length();

  void set length(int value);

  bool get multiple();

  void set multiple(bool value);

  String get name();

  void set name(String value);

  HTMLOptionsCollection get options();

  bool get required();

  void set required(bool value);

  int get selectedIndex();

  void set selectedIndex(int value);

  int get size();

  void set size(int value);

  String get type();

  String get validationMessage();

  ValidityState get validity();

  String get value();

  void set value(String value);

  bool get willValidate();

  void add(HTMLElement element, HTMLElement before);

  bool checkValidity();

  Node item(int index);

  Node namedItem(String name);

  void remove(var index_OR_option);

  void setCustomValidity(String error);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLSourceElement extends HTMLElement {

  String get media();

  void set media(String value);

  String get src();

  void set src(String value);

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLSpanElement extends HTMLElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLStyleElement extends HTMLElement {

  bool get disabled();

  void set disabled(bool value);

  String get media();

  void set media(String value);

  bool get scoped();

  void set scoped(bool value);

  StyleSheet get sheet();

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTableCaptionElement extends HTMLElement {

  String get align();

  void set align(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTableCellElement extends HTMLElement {

  String get abbr();

  void set abbr(String value);

  String get align();

  void set align(String value);

  String get axis();

  void set axis(String value);

  String get bgColor();

  void set bgColor(String value);

  int get cellIndex();

  String get ch();

  void set ch(String value);

  String get chOff();

  void set chOff(String value);

  int get colSpan();

  void set colSpan(int value);

  String get headers();

  void set headers(String value);

  String get height();

  void set height(String value);

  bool get noWrap();

  void set noWrap(bool value);

  int get rowSpan();

  void set rowSpan(int value);

  String get scope();

  void set scope(String value);

  String get vAlign();

  void set vAlign(String value);

  String get width();

  void set width(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTableColElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get ch();

  void set ch(String value);

  String get chOff();

  void set chOff(String value);

  int get span();

  void set span(int value);

  String get vAlign();

  void set vAlign(String value);

  String get width();

  void set width(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTableElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get bgColor();

  void set bgColor(String value);

  String get border();

  void set border(String value);

  HTMLTableCaptionElement get caption();

  void set caption(HTMLTableCaptionElement value);

  String get cellPadding();

  void set cellPadding(String value);

  String get cellSpacing();

  void set cellSpacing(String value);

  String get frame();

  void set frame(String value);

  HTMLCollection get rows();

  String get rules();

  void set rules(String value);

  String get summary();

  void set summary(String value);

  HTMLCollection get tBodies();

  HTMLTableSectionElement get tFoot();

  void set tFoot(HTMLTableSectionElement value);

  HTMLTableSectionElement get tHead();

  void set tHead(HTMLTableSectionElement value);

  String get width();

  void set width(String value);

  HTMLElement createCaption();

  HTMLElement createTFoot();

  HTMLElement createTHead();

  void deleteCaption();

  void deleteRow(int index);

  void deleteTFoot();

  void deleteTHead();

  HTMLElement insertRow(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTableRowElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get bgColor();

  void set bgColor(String value);

  HTMLCollection get cells();

  String get ch();

  void set ch(String value);

  String get chOff();

  void set chOff(String value);

  int get rowIndex();

  int get sectionRowIndex();

  String get vAlign();

  void set vAlign(String value);

  void deleteCell(int index);

  HTMLElement insertCell(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTableSectionElement extends HTMLElement {

  String get align();

  void set align(String value);

  String get ch();

  void set ch(String value);

  String get chOff();

  void set chOff(String value);

  HTMLCollection get rows();

  String get vAlign();

  void set vAlign(String value);

  void deleteRow(int index);

  HTMLElement insertRow(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTextAreaElement extends HTMLElement {

  bool get autofocus();

  void set autofocus(bool value);

  int get cols();

  void set cols(int value);

  String get defaultValue();

  void set defaultValue(String value);

  String get dirName();

  void set dirName(String value);

  bool get disabled();

  void set disabled(bool value);

  HTMLFormElement get form();

  NodeList get labels();

  int get maxLength();

  void set maxLength(int value);

  String get name();

  void set name(String value);

  String get placeholder();

  void set placeholder(String value);

  bool get readOnly();

  void set readOnly(bool value);

  bool get required();

  void set required(bool value);

  int get rows();

  void set rows(int value);

  String get selectionDirection();

  void set selectionDirection(String value);

  int get selectionEnd();

  void set selectionEnd(int value);

  int get selectionStart();

  void set selectionStart(int value);

  int get textLength();

  String get type();

  String get validationMessage();

  ValidityState get validity();

  String get value();

  void set value(String value);

  bool get willValidate();

  String get wrap();

  void set wrap(String value);

  bool checkValidity();

  void select();

  void setCustomValidity(String error);

  void setSelectionRange(int start, int end, [String direction]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTitleElement extends HTMLElement {

  String get text();

  void set text(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLTrackElement extends HTMLElement {

  static final int ERROR = 3;

  static final int LOADED = 2;

  static final int LOADING = 1;

  static final int NONE = 0;

  bool get isDefault();

  void set isDefault(bool value);

  String get kind();

  void set kind(String value);

  String get label();

  void set label(String value);

  int get readyState();

  String get src();

  void set src(String value);

  String get srclang();

  void set srclang(String value);

  TextTrack get track();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLUListElement extends HTMLElement {

  bool get compact();

  void set compact(bool value);

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLUnknownElement extends HTMLElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HTMLVideoElement extends HTMLMediaElement {

  int get height();

  void set height(int value);

  String get poster();

  void set poster(String value);

  int get videoHeight();

  int get videoWidth();

  int get webkitDecodedFrameCount();

  bool get webkitDisplayingFullscreen();

  int get webkitDroppedFrameCount();

  bool get webkitSupportsFullscreen();

  int get width();

  void set width(int value);

  void webkitEnterFullScreen();

  void webkitEnterFullscreen();

  void webkitExitFullScreen();

  void webkitExitFullscreen();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HashChangeEvent extends Event {

  String get newURL();

  String get oldURL();

  void initHashChangeEvent(String type, bool canBubble, bool cancelable, String oldURL, String newURL);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface HighPass2FilterNode extends AudioNode {

  AudioParam get cutoff();

  AudioParam get resonance();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface History {

  int get length();

  void back();

  void forward();

  void go(int distance);

  void pushState(Object data, String title, [String url]);

  void replaceState(Object data, String title, [String url]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBAny {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBCursor {

  static final int NEXT = 0;

  static final int NEXT_NO_DUPLICATE = 1;

  static final int PREV = 2;

  static final int PREV_NO_DUPLICATE = 3;

  int get direction();

  IDBKey get key();

  IDBKey get primaryKey();

  IDBAny get source();

  void continueFunction([IDBKey key]);

  IDBRequest delete();

  IDBRequest update(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBCursorWithValue extends IDBCursor {

  IDBAny get value();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBDatabase {

  String get name();

  EventListener get onabort();

  void set onabort(EventListener value);

  EventListener get onerror();

  void set onerror(EventListener value);

  EventListener get onversionchange();

  void set onversionchange(EventListener value);

  String get version();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void close();

  IDBObjectStore createObjectStore(String name);

  void deleteObjectStore(String name);

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  IDBVersionChangeRequest setVersion(String version);

  IDBTransaction transaction(String storeName, int mode);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBDatabaseError {

  int get code();

  void set code(int value);

  String get message();

  void set message(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBDatabaseException {

  static final int ABORT_ERR = 8;

  static final int CONSTRAINT_ERR = 4;

  static final int DATA_ERR = 5;

  static final int NON_TRANSIENT_ERR = 2;

  static final int NOT_ALLOWED_ERR = 6;

  static final int NOT_FOUND_ERR = 3;

  static final int NO_ERR = 0;

  static final int QUOTA_ERR = 11;

  static final int READ_ONLY_ERR = 9;

  static final int TIMEOUT_ERR = 10;

  static final int TRANSACTION_INACTIVE_ERR = 7;

  static final int UNKNOWN_ERR = 1;

  static final int VER_ERR = 12;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBFactory {

  int cmp(IDBKey first, IDBKey second);

  IDBVersionChangeRequest deleteDatabase(String name);

  IDBRequest getDatabaseNames();

  IDBRequest open(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBIndex {

  String get keyPath();

  bool get multiEntry();

  String get name();

  IDBObjectStore get objectStore();

  bool get unique();

  IDBRequest count([IDBKeyRange range]);

  IDBRequest getObject(IDBKey key);

  IDBRequest getKey(IDBKey key);

  IDBRequest openCursor([IDBKeyRange range, int direction]);

  IDBRequest openKeyCursor([IDBKeyRange range, int direction]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBKey {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBKeyRange {

  IDBKey get lower();

  bool get lowerOpen();

  IDBKey get upper();

  bool get upperOpen();

  IDBKeyRange bound(IDBKey lower, IDBKey upper, [bool lowerOpen, bool upperOpen]);

  IDBKeyRange lowerBound(IDBKey bound, [bool open]);

  IDBKeyRange only(IDBKey value);

  IDBKeyRange upperBound(IDBKey bound, [bool open]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBObjectStore {

  String get keyPath();

  String get name();

  IDBTransaction get transaction();

  IDBRequest add(String value, [IDBKey key]);

  IDBRequest clear();

  IDBRequest count([IDBKeyRange range]);

  IDBIndex createIndex(String name, String keyPath);

  IDBRequest delete(IDBKey key);

  void deleteIndex(String name);

  IDBRequest getObject(IDBKey key);

  IDBIndex index(String name);

  IDBRequest openCursor([IDBKeyRange range, int direction]);

  IDBRequest put(String value, [IDBKey key]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBRequest {

  static final int DONE = 2;

  static final int LOADING = 1;

  int get errorCode();

  EventListener get onerror();

  void set onerror(EventListener value);

  EventListener get onsuccess();

  void set onsuccess(EventListener value);

  int get readyState();

  IDBAny get result();

  IDBAny get source();

  IDBTransaction get transaction();

  String get webkitErrorMessage();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBTransaction {

  static final int READ_ONLY = 0;

  static final int READ_WRITE = 1;

  static final int VERSION_CHANGE = 2;

  IDBDatabase get db();

  int get mode();

  EventListener get onabort();

  void set onabort(EventListener value);

  EventListener get oncomplete();

  void set oncomplete(EventListener value);

  EventListener get onerror();

  void set onerror(EventListener value);

  void abort();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  IDBObjectStore objectStore(String name);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBVersionChangeEvent extends Event {

  String get version();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface IDBVersionChangeRequest extends IDBRequest {

  EventListener get onblocked();

  void set onblocked(EventListener value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ImageData {

  CanvasPixelArray get data();

  int get height();

  int get width();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface InjectedScriptHost {

  void clearConsoleMessages();

  void copyText(String text);

  int databaseId(Object database);

  void didCreateWorker(int id, String url, bool isFakeWorker);

  void didDestroyWorker(int id);

  Object evaluate(String text);

  Object functionLocation(Object object);

  void inspect(Object objectId, Object hints);

  Object inspectedNode(int num);

  Object internalConstructorName(Object object);

  bool isHTMLAllCollection(Object object);

  int nextWorkerId();

  int storageId(Object storage);

  String type(Object object);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface InspectorFrontendHost {

  void bringToFront();

  bool canSaveAs();

  void closeWindow();

  void copyText(String text);

  String hiddenPanels();

  void inspectedURLChanged(String newURL);

  String loadResourceSynchronously(String url);

  void loaded();

  String localizedStringsURL();

  void moveWindowBy(num x, num y);

  String platform();

  String port();

  void recordActionTaken(int actionCode);

  void recordPanelShown(int panelCode);

  void recordSettingChanged(int settingChanged);

  void requestAttachWindow();

  void requestDetachWindow();

  void requestSetDockSide(String side);

  void saveAs(String fileName, String content);

  void sendMessageToBackend(String message);

  void setAttachedWindowHeight(int height);

  void setInjectedScriptForOrigin(String origin, String script);

  void showContextMenu(MouseEvent event, Object items);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Int16Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Int16Array(int length);

  Int16Array.fromList(List<int> list);

  Int16Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 2;

  int get length();

  void setElements(Object array, [int offset]);

  Int16Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Int32Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Int32Array(int length);

  Int32Array.fromList(List<int> list);

  Int32Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 4;

  int get length();

  void setElements(Object array, [int offset]);

  Int32Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Int8Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Int8Array(int length);

  Int8Array.fromList(List<int> list);

  Int8Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 1;

  int get length();

  void setElements(Object array, [int offset]);

  Int8Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface JavaScriptAudioNode extends AudioNode {

  int get bufferSize();

  EventListener get onaudioprocess();

  void set onaudioprocess(EventListener value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface JavaScriptCallFrame {

  static final int CATCH_SCOPE = 4;

  static final int CLOSURE_SCOPE = 3;

  static final int GLOBAL_SCOPE = 0;

  static final int LOCAL_SCOPE = 1;

  static final int WITH_SCOPE = 2;

  JavaScriptCallFrame get caller();

  int get column();

  String get functionName();

  int get line();

  List get scopeChain();

  int get sourceID();

  String get type();

  void evaluate(String script);

  int scopeType(int scopeIndex);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface KeyboardEvent extends UIEvent {

  bool get altGraphKey();

  bool get altKey();

  bool get ctrlKey();

  String get keyIdentifier();

  int get keyLocation();

  bool get metaKey();

  bool get shiftKey();

  void initKeyboardEvent(String type, bool canBubble, bool cancelable, DOMWindow view, String keyIdentifier, int keyLocation, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, bool altGraphKey);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Location {

  String get hash();

  void set hash(String value);

  String get host();

  void set host(String value);

  String get hostname();

  void set hostname(String value);

  String get href();

  void set href(String value);

  String get origin();

  String get pathname();

  void set pathname(String value);

  String get port();

  void set port(String value);

  String get protocol();

  void set protocol(String value);

  String get search();

  void set search(String value);

  void assign(String url);

  void reload();

  void replace(String url);

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface LowPass2FilterNode extends AudioNode {

  AudioParam get cutoff();

  AudioParam get resonance();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MediaController {

  TimeRanges get buffered();

  num get currentTime();

  void set currentTime(num value);

  num get defaultPlaybackRate();

  void set defaultPlaybackRate(num value);

  num get duration();

  bool get muted();

  void set muted(bool value);

  bool get paused();

  num get playbackRate();

  void set playbackRate(num value);

  TimeRanges get played();

  TimeRanges get seekable();

  num get volume();

  void set volume(num value);

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void pause();

  void play();

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MediaElementAudioSourceNode extends AudioSourceNode {

  HTMLMediaElement get mediaElement();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MediaError {

  static final int MEDIA_ERR_ABORTED = 1;

  static final int MEDIA_ERR_DECODE = 3;

  static final int MEDIA_ERR_NETWORK = 2;

  static final int MEDIA_ERR_SRC_NOT_SUPPORTED = 4;

  int get code();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MediaList extends List<String> {

  int get length();

  String get mediaText();

  void set mediaText(String value);

  void appendMedium(String newMedium);

  void deleteMedium(String oldMedium);

  String item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MediaQueryList {

  bool get matches();

  String get media();

  void addListener(MediaQueryListListener listener);

  void removeListener(MediaQueryListListener listener);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MediaQueryListListener {

  void queryChanged(MediaQueryList list);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MemoryInfo {

  int get jsHeapSizeLimit();

  int get totalJSHeapSize();

  int get usedJSHeapSize();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MessageChannel {

  MessagePort get port1();

  MessagePort get port2();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MessageEvent extends Event {

  Object get data();

  String get lastEventId();

  String get origin();

  List get ports();

  DOMWindow get source();

  void initMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, DOMWindow sourceArg, List messagePorts);

  void webkitInitMessageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, Object dataArg, String originArg, String lastEventIdArg, DOMWindow sourceArg, List transferables);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MessagePort extends EventTarget {

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void close();

  bool dispatchEvent(Event evt);

  void postMessage(String message, [List messagePorts]);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  void start();

  void webkitPostMessage(String message, [List transfer]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Metadata {

  Date get modificationTime();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool MetadataCallback(Metadata metadata);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MouseEvent extends UIEvent {

  bool get altKey();

  int get button();

  int get clientX();

  int get clientY();

  bool get ctrlKey();

  Clipboard get dataTransfer();

  Node get fromElement();

  bool get metaKey();

  int get offsetX();

  int get offsetY();

  EventTarget get relatedTarget();

  int get screenX();

  int get screenY();

  bool get shiftKey();

  Node get toElement();

  int get webkitMovementX();

  int get webkitMovementY();

  int get x();

  int get y();

  void initMouseEvent(String type, bool canBubble, bool cancelable, DOMWindow view, int detail, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, int button, EventTarget relatedTarget);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MutationCallback {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MutationEvent extends Event {

  static final int ADDITION = 2;

  static final int MODIFICATION = 1;

  static final int REMOVAL = 3;

  int get attrChange();

  String get attrName();

  String get newValue();

  String get prevValue();

  Node get relatedNode();

  void initMutationEvent(String type, bool canBubble, bool cancelable, Node relatedNode, String prevValue, String newValue, String attrName, int attrChange);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface MutationRecord {

  NodeList get addedNodes();

  String get attributeName();

  String get attributeNamespace();

  Node get nextSibling();

  String get oldValue();

  Node get previousSibling();

  NodeList get removedNodes();

  Node get target();

  String get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface NamedNodeMap extends List<Node> {

  int get length();

  Node getNamedItem(String name);

  Node getNamedItemNS(String namespaceURI, String localName);

  Node item(int index);

  Node removeNamedItem(String name);

  Node removeNamedItemNS(String namespaceURI, String localName);

  Node setNamedItem(Node node);

  Node setNamedItemNS(Node node);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Navigator {

  String get appCodeName();

  String get appName();

  String get appVersion();

  bool get cookieEnabled();

  Geolocation get geolocation();

  String get language();

  DOMMimeTypeArray get mimeTypes();

  bool get onLine();

  String get platform();

  DOMPluginArray get plugins();

  String get product();

  String get productSub();

  String get userAgent();

  String get vendor();

  String get vendorSub();

  void getStorageUpdates();

  bool javaEnabled();

  void registerProtocolHandler(String scheme, String url, String title);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Node extends EventTarget {

  static final int ATTRIBUTE_NODE = 2;

  static final int CDATA_SECTION_NODE = 4;

  static final int COMMENT_NODE = 8;

  static final int DOCUMENT_FRAGMENT_NODE = 11;

  static final int DOCUMENT_NODE = 9;

  static final int DOCUMENT_POSITION_CONTAINED_BY = 0x10;

  static final int DOCUMENT_POSITION_CONTAINS = 0x08;

  static final int DOCUMENT_POSITION_DISCONNECTED = 0x01;

  static final int DOCUMENT_POSITION_FOLLOWING = 0x04;

  static final int DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;

  static final int DOCUMENT_POSITION_PRECEDING = 0x02;

  static final int DOCUMENT_TYPE_NODE = 10;

  static final int ELEMENT_NODE = 1;

  static final int ENTITY_NODE = 6;

  static final int ENTITY_REFERENCE_NODE = 5;

  static final int NOTATION_NODE = 12;

  static final int PROCESSING_INSTRUCTION_NODE = 7;

  static final int TEXT_NODE = 3;

  NamedNodeMap get attributes();

  String get baseURI();

  NodeList get childNodes();

  Node get firstChild();

  Node get lastChild();

  String get localName();

  String get namespaceURI();

  Node get nextSibling();

  String get nodeName();

  int get nodeType();

  String get nodeValue();

  void set nodeValue(String value);

  Document get ownerDocument();

  Element get parentElement();

  Node get parentNode();

  String get prefix();

  void set prefix(String value);

  Node get previousSibling();

  String get textContent();

  void set textContent(String value);

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  Node appendChild(Node newChild);

  Node cloneNode(bool deep);

  int compareDocumentPosition(Node other);

  bool contains(Node other);

  bool dispatchEvent(Event event);

  bool hasAttributes();

  bool hasChildNodes();

  Node insertBefore(Node newChild, Node refChild);

  bool isDefaultNamespace(String namespaceURI);

  bool isEqualNode(Node other);

  bool isSameNode(Node other);

  bool isSupported(String feature, String version);

  String lookupNamespaceURI(String prefix);

  String lookupPrefix(String namespaceURI);

  void normalize();

  Node removeChild(Node oldChild);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  Node replaceChild(Node newChild, Node oldChild);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface NodeFilter {

  static final int FILTER_ACCEPT = 1;

  static final int FILTER_REJECT = 2;

  static final int FILTER_SKIP = 3;

  static final int SHOW_ALL = 0xFFFFFFFF;

  static final int SHOW_ATTRIBUTE = 0x00000002;

  static final int SHOW_CDATA_SECTION = 0x00000008;

  static final int SHOW_COMMENT = 0x00000080;

  static final int SHOW_DOCUMENT = 0x00000100;

  static final int SHOW_DOCUMENT_FRAGMENT = 0x00000400;

  static final int SHOW_DOCUMENT_TYPE = 0x00000200;

  static final int SHOW_ELEMENT = 0x00000001;

  static final int SHOW_ENTITY = 0x00000020;

  static final int SHOW_ENTITY_REFERENCE = 0x00000010;

  static final int SHOW_NOTATION = 0x00000800;

  static final int SHOW_PROCESSING_INSTRUCTION = 0x00000040;

  static final int SHOW_TEXT = 0x00000004;

  int acceptNode(Node n);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface NodeIterator {

  bool get expandEntityReferences();

  NodeFilter get filter();

  bool get pointerBeforeReferenceNode();

  Node get referenceNode();

  Node get root();

  int get whatToShow();

  void detach();

  Node nextNode();

  Node previousNode();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface NodeList extends List<Node> {

  int get length();

  Node item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface NodeSelector {

  Element querySelector(String selectors);

  NodeList querySelectorAll(String selectors);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Notation extends Node {

  String get publicId();

  String get systemId();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Notification extends EventTarget {

  String get dir();

  void set dir(String value);

  String get replaceId();

  void set replaceId(String value);

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void cancel();

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  void show();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface NotificationCenter {

  int checkPermission();

  Notification createHTMLNotification(String url);

  Notification createNotification(String iconUrl, String title, String body);

  void requestPermission(VoidCallback callback);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface OESStandardDerivatives {

  static final int FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface OESTextureFloat {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface OESVertexArrayObject {

  static final int VERTEX_ARRAY_BINDING_OES = 0x85B5;

  void bindVertexArrayOES(WebGLVertexArrayObjectOES arrayObject);

  WebGLVertexArrayObjectOES createVertexArrayOES();

  void deleteVertexArrayOES(WebGLVertexArrayObjectOES arrayObject);

  bool isVertexArrayOES(WebGLVertexArrayObjectOES arrayObject);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface OfflineAudioCompletionEvent extends Event {

  AudioBuffer get renderedBuffer();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface OperationNotAllowedException {

  static final int NOT_ALLOWED_ERR = 1;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface OverflowEvent extends Event {

  static final int BOTH = 2;

  static final int HORIZONTAL = 0;

  static final int VERTICAL = 1;

  bool get horizontalOverflow();

  int get orient();

  bool get verticalOverflow();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface PageTransitionEvent extends Event {

  bool get persisted();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Performance {

  MemoryInfo get memory();

  PerformanceNavigation get navigation();

  PerformanceTiming get timing();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface PerformanceNavigation {

  static final int TYPE_BACK_FORWARD = 2;

  static final int TYPE_NAVIGATE = 0;

  static final int TYPE_RELOAD = 1;

  static final int TYPE_RESERVED = 255;

  int get redirectCount();

  int get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface PerformanceTiming {

  int get connectEnd();

  int get connectStart();

  int get domComplete();

  int get domContentLoadedEventEnd();

  int get domContentLoadedEventStart();

  int get domInteractive();

  int get domLoading();

  int get domainLookupEnd();

  int get domainLookupStart();

  int get fetchStart();

  int get loadEventEnd();

  int get loadEventStart();

  int get navigationStart();

  int get redirectEnd();

  int get redirectStart();

  int get requestStart();

  int get responseEnd();

  int get responseStart();

  int get secureConnectionStart();

  int get unloadEventEnd();

  int get unloadEventStart();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface PointerLock {

  bool get isLocked();

  void lock(Element target, [VoidCallback successCallback, VoidCallback failureCallback]);

  void unlock();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface PopStateEvent extends Event {

  Object get state();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool PositionCallback(Geoposition position);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface PositionError {

  static final int PERMISSION_DENIED = 1;

  static final int POSITION_UNAVAILABLE = 2;

  static final int TIMEOUT = 3;

  int get code();

  String get message();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool PositionErrorCallback(PositionError error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ProcessingInstruction extends Node {

  String get data();

  void set data(String value);

  StyleSheet get sheet();

  String get target();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ProgressEvent extends Event {

  bool get lengthComputable();

  int get loaded();

  int get total();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface RGBColor {

  CSSPrimitiveValue get blue();

  CSSPrimitiveValue get green();

  CSSPrimitiveValue get red();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Range {

  static final int END_TO_END = 2;

  static final int END_TO_START = 3;

  static final int NODE_AFTER = 1;

  static final int NODE_BEFORE = 0;

  static final int NODE_BEFORE_AND_AFTER = 2;

  static final int NODE_INSIDE = 3;

  static final int START_TO_END = 1;

  static final int START_TO_START = 0;

  bool get collapsed();

  Node get commonAncestorContainer();

  Node get endContainer();

  int get endOffset();

  Node get startContainer();

  int get startOffset();

  DocumentFragment cloneContents();

  Range cloneRange();

  void collapse(bool toStart);

  int compareNode(Node refNode);

  int comparePoint(Node refNode, int offset);

  DocumentFragment createContextualFragment(String html);

  void deleteContents();

  void detach();

  void expand(String unit);

  DocumentFragment extractContents();

  ClientRect getBoundingClientRect();

  ClientRectList getClientRects();

  void insertNode(Node newNode);

  bool intersectsNode(Node refNode);

  bool isPointInRange(Node refNode, int offset);

  void selectNode(Node refNode);

  void selectNodeContents(Node refNode);

  void setEnd(Node refNode, int offset);

  void setEndAfter(Node refNode);

  void setEndBefore(Node refNode);

  void setStart(Node refNode, int offset);

  void setStartAfter(Node refNode);

  void setStartBefore(Node refNode);

  void surroundContents(Node newParent);

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface RangeException {

  static final int BAD_BOUNDARYPOINTS_ERR = 1;

  static final int INVALID_NODE_TYPE_ERR = 2;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface RealtimeAnalyserNode extends AudioNode {

  int get fftSize();

  void set fftSize(int value);

  int get frequencyBinCount();

  num get maxDecibels();

  void set maxDecibels(num value);

  num get minDecibels();

  void set minDecibels(num value);

  num get smoothingTimeConstant();

  void set smoothingTimeConstant(num value);

  void getByteFrequencyData(Uint8Array array);

  void getByteTimeDomainData(Uint8Array array);

  void getFloatFrequencyData(Float32Array array);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Rect {

  CSSPrimitiveValue get bottom();

  CSSPrimitiveValue get left();

  CSSPrimitiveValue get right();

  CSSPrimitiveValue get top();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SQLError {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  int get code();

  String get message();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SQLException {

  static final int CONSTRAINT_ERR = 6;

  static final int DATABASE_ERR = 1;

  static final int QUOTA_ERR = 4;

  static final int SYNTAX_ERR = 5;

  static final int TIMEOUT_ERR = 7;

  static final int TOO_LARGE_ERR = 3;

  static final int UNKNOWN_ERR = 0;

  static final int VERSION_ERR = 2;

  int get code();

  String get message();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SQLResultSet {

  int get insertId();

  SQLResultSetRowList get rows();

  int get rowsAffected();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SQLResultSetRowList {

  int get length();

  Object item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLStatementCallback(SQLTransaction transaction, SQLResultSet resultSet);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLStatementErrorCallback(SQLTransaction transaction, SQLError error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SQLTransaction {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLTransactionCallback(SQLTransaction transaction);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLTransactionErrorCallback(SQLError error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SQLTransactionSync {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool SQLTransactionSyncCallback(SQLTransactionSync transaction);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedString get target();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAltGlyphDefElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAltGlyphElement extends SVGTextPositioningElement, SVGURIReference {

  String get format();

  void set format(String value);

  String get glyphRef();

  void set glyphRef(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAltGlyphItemElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAngle {

  static final int SVG_ANGLETYPE_DEG = 2;

  static final int SVG_ANGLETYPE_GRAD = 4;

  static final int SVG_ANGLETYPE_RAD = 3;

  static final int SVG_ANGLETYPE_UNKNOWN = 0;

  static final int SVG_ANGLETYPE_UNSPECIFIED = 1;

  int get unitType();

  num get value();

  void set value(num value);

  String get valueAsString();

  void set valueAsString(String value);

  num get valueInSpecifiedUnits();

  void set valueInSpecifiedUnits(num value);

  void convertToSpecifiedUnits(int unitType);

  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimateColorElement extends SVGAnimationElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimateElement extends SVGAnimationElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimateMotionElement extends SVGAnimationElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimateTransformElement extends SVGAnimationElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedAngle {

  SVGAngle get animVal();

  SVGAngle get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedBoolean {

  bool get animVal();

  bool get baseVal();

  void set baseVal(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedEnumeration {

  int get animVal();

  int get baseVal();

  void set baseVal(int value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedInteger {

  int get animVal();

  int get baseVal();

  void set baseVal(int value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedLength {

  SVGLength get animVal();

  SVGLength get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedLengthList {

  SVGLengthList get animVal();

  SVGLengthList get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedNumber {

  num get animVal();

  num get baseVal();

  void set baseVal(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedNumberList {

  SVGNumberList get animVal();

  SVGNumberList get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedPreserveAspectRatio {

  SVGPreserveAspectRatio get animVal();

  SVGPreserveAspectRatio get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedRect {

  SVGRect get animVal();

  SVGRect get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedString {

  String get animVal();

  String get baseVal();

  void set baseVal(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimatedTransformList {

  SVGTransformList get animVal();

  SVGTransformList get baseVal();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGAnimationElement extends SVGElement, SVGTests, SVGExternalResourcesRequired, ElementTimeControl {

  SVGElement get targetElement();

  num getCurrentTime();

  num getSimpleDuration();

  num getStartTime();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGCircleElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedLength get cx();

  SVGAnimatedLength get cy();

  SVGAnimatedLength get r();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGClipPathElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedEnumeration get clipPathUnits();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGColor extends CSSValue {

  static final int SVG_COLORTYPE_CURRENTCOLOR = 3;

  static final int SVG_COLORTYPE_RGBCOLOR = 1;

  static final int SVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_COLORTYPE_UNKNOWN = 0;

  int get colorType();

  RGBColor get rgbColor();

  void setColor(int colorType, String rgbColor, String iccColor);

  void setRGBColor(String rgbColor);

  void setRGBColorICCColor(String rgbColor, String iccColor);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGComponentTransferFunctionElement extends SVGElement {

  static final int SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2;

  static final int SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0;

  SVGAnimatedNumber get amplitude();

  SVGAnimatedNumber get exponent();

  SVGAnimatedNumber get intercept();

  SVGAnimatedNumber get offset();

  SVGAnimatedNumber get slope();

  SVGAnimatedNumberList get tableValues();

  SVGAnimatedEnumeration get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGCursorElement extends SVGElement, SVGURIReference, SVGTests, SVGExternalResourcesRequired {

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGDefsElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGDescElement extends SVGElement, SVGLangSpace, SVGStylable {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGDocument extends Document {

  SVGSVGElement get rootElement();

  Event createEvent(String eventType);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGElement extends Element {

  String get id();

  void set id(String value);

  SVGSVGElement get ownerSVGElement();

  SVGElement get viewportElement();

  String get xmlbase();

  void set xmlbase(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGElementInstance extends EventTarget {

  SVGElementInstanceList get childNodes();

  SVGElement get correspondingElement();

  SVGUseElement get correspondingUseElement();

  SVGElementInstance get firstChild();

  SVGElementInstance get lastChild();

  SVGElementInstance get nextSibling();

  SVGElementInstance get parentNode();

  SVGElementInstance get previousSibling();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event event);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGElementInstanceList {

  int get length();

  SVGElementInstance item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGEllipseElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedLength get cx();

  SVGAnimatedLength get cy();

  SVGAnimatedLength get rx();

  SVGAnimatedLength get ry();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGException {

  static final int SVG_INVALID_VALUE_ERR = 1;

  static final int SVG_MATRIX_NOT_INVERTABLE = 2;

  static final int SVG_WRONG_TYPE_ERR = 0;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGExternalResourcesRequired {

  SVGAnimatedBoolean get externalResourcesRequired();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEBlendElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_FEBLEND_MODE_DARKEN = 4;

  static final int SVG_FEBLEND_MODE_LIGHTEN = 5;

  static final int SVG_FEBLEND_MODE_MULTIPLY = 2;

  static final int SVG_FEBLEND_MODE_NORMAL = 1;

  static final int SVG_FEBLEND_MODE_SCREEN = 3;

  static final int SVG_FEBLEND_MODE_UNKNOWN = 0;

  SVGAnimatedString get in1();

  SVGAnimatedString get in2();

  SVGAnimatedEnumeration get mode();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEColorMatrixElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3;

  static final int SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4;

  static final int SVG_FECOLORMATRIX_TYPE_MATRIX = 1;

  static final int SVG_FECOLORMATRIX_TYPE_SATURATE = 2;

  static final int SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0;

  SVGAnimatedString get in1();

  SVGAnimatedEnumeration get type();

  SVGAnimatedNumberList get values();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEComponentTransferElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedString get in1();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFECompositeElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6;

  static final int SVG_FECOMPOSITE_OPERATOR_ATOP = 4;

  static final int SVG_FECOMPOSITE_OPERATOR_IN = 2;

  static final int SVG_FECOMPOSITE_OPERATOR_OUT = 3;

  static final int SVG_FECOMPOSITE_OPERATOR_OVER = 1;

  static final int SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0;

  static final int SVG_FECOMPOSITE_OPERATOR_XOR = 5;

  SVGAnimatedString get in1();

  SVGAnimatedString get in2();

  SVGAnimatedNumber get k1();

  SVGAnimatedNumber get k2();

  SVGAnimatedNumber get k3();

  SVGAnimatedNumber get k4();

  SVGAnimatedEnumeration get operator();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEConvolveMatrixElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_EDGEMODE_DUPLICATE = 1;

  static final int SVG_EDGEMODE_NONE = 3;

  static final int SVG_EDGEMODE_UNKNOWN = 0;

  static final int SVG_EDGEMODE_WRAP = 2;

  SVGAnimatedNumber get bias();

  SVGAnimatedNumber get divisor();

  SVGAnimatedEnumeration get edgeMode();

  SVGAnimatedString get in1();

  SVGAnimatedNumberList get kernelMatrix();

  SVGAnimatedNumber get kernelUnitLengthX();

  SVGAnimatedNumber get kernelUnitLengthY();

  SVGAnimatedInteger get orderX();

  SVGAnimatedInteger get orderY();

  SVGAnimatedBoolean get preserveAlpha();

  SVGAnimatedInteger get targetX();

  SVGAnimatedInteger get targetY();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEDiffuseLightingElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedNumber get diffuseConstant();

  SVGAnimatedString get in1();

  SVGAnimatedNumber get kernelUnitLengthX();

  SVGAnimatedNumber get kernelUnitLengthY();

  SVGAnimatedNumber get surfaceScale();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEDisplacementMapElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_CHANNEL_A = 4;

  static final int SVG_CHANNEL_B = 3;

  static final int SVG_CHANNEL_G = 2;

  static final int SVG_CHANNEL_R = 1;

  static final int SVG_CHANNEL_UNKNOWN = 0;

  SVGAnimatedString get in1();

  SVGAnimatedString get in2();

  SVGAnimatedNumber get scale();

  SVGAnimatedEnumeration get xChannelSelector();

  SVGAnimatedEnumeration get yChannelSelector();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEDistantLightElement extends SVGElement {

  SVGAnimatedNumber get azimuth();

  SVGAnimatedNumber get elevation();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEDropShadowElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedNumber get dx();

  SVGAnimatedNumber get dy();

  SVGAnimatedString get in1();

  SVGAnimatedNumber get stdDeviationX();

  SVGAnimatedNumber get stdDeviationY();

  void setStdDeviation(num stdDeviationX, num stdDeviationY);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEFloodElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEFuncAElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEFuncBElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEFuncGElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEFuncRElement extends SVGComponentTransferFunctionElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEGaussianBlurElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedString get in1();

  SVGAnimatedNumber get stdDeviationX();

  SVGAnimatedNumber get stdDeviationY();

  void setStdDeviation(num stdDeviationX, num stdDeviationY);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEImageElement extends SVGElement, SVGURIReference, SVGLangSpace, SVGExternalResourcesRequired, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedPreserveAspectRatio get preserveAspectRatio();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEMergeElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEMergeNodeElement extends SVGElement {

  SVGAnimatedString get in1();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEMorphologyElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_MORPHOLOGY_OPERATOR_DILATE = 2;

  static final int SVG_MORPHOLOGY_OPERATOR_ERODE = 1;

  static final int SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0;

  SVGAnimatedString get in1();

  SVGAnimatedEnumeration get operator();

  SVGAnimatedNumber get radiusX();

  SVGAnimatedNumber get radiusY();

  void setRadius(num radiusX, num radiusY);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEOffsetElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedNumber get dx();

  SVGAnimatedNumber get dy();

  SVGAnimatedString get in1();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFEPointLightElement extends SVGElement {

  SVGAnimatedNumber get x();

  SVGAnimatedNumber get y();

  SVGAnimatedNumber get z();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFESpecularLightingElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedString get in1();

  SVGAnimatedNumber get specularConstant();

  SVGAnimatedNumber get specularExponent();

  SVGAnimatedNumber get surfaceScale();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFESpotLightElement extends SVGElement {

  SVGAnimatedNumber get limitingConeAngle();

  SVGAnimatedNumber get pointsAtX();

  SVGAnimatedNumber get pointsAtY();

  SVGAnimatedNumber get pointsAtZ();

  SVGAnimatedNumber get specularExponent();

  SVGAnimatedNumber get x();

  SVGAnimatedNumber get y();

  SVGAnimatedNumber get z();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFETileElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  SVGAnimatedString get in1();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFETurbulenceElement extends SVGElement, SVGFilterPrimitiveStandardAttributes {

  static final int SVG_STITCHTYPE_NOSTITCH = 2;

  static final int SVG_STITCHTYPE_STITCH = 1;

  static final int SVG_STITCHTYPE_UNKNOWN = 0;

  static final int SVG_TURBULENCE_TYPE_FRACTALNOISE = 1;

  static final int SVG_TURBULENCE_TYPE_TURBULENCE = 2;

  static final int SVG_TURBULENCE_TYPE_UNKNOWN = 0;

  SVGAnimatedNumber get baseFrequencyX();

  SVGAnimatedNumber get baseFrequencyY();

  SVGAnimatedInteger get numOctaves();

  SVGAnimatedNumber get seed();

  SVGAnimatedEnumeration get stitchTiles();

  SVGAnimatedEnumeration get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFilterElement extends SVGElement, SVGURIReference, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable {

  SVGAnimatedInteger get filterResX();

  SVGAnimatedInteger get filterResY();

  SVGAnimatedEnumeration get filterUnits();

  SVGAnimatedLength get height();

  SVGAnimatedEnumeration get primitiveUnits();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();

  void setFilterRes(int filterResX, int filterResY);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFilterPrimitiveStandardAttributes extends SVGStylable {

  SVGAnimatedLength get height();

  SVGAnimatedString get result();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFitToViewBox {

  SVGAnimatedPreserveAspectRatio get preserveAspectRatio();

  SVGAnimatedRect get viewBox();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFontElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFontFaceElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFontFaceFormatElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFontFaceNameElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFontFaceSrcElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGFontFaceUriElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGForeignObjectElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedLength get height();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGGElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGGlyphElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGGlyphRefElement extends SVGElement, SVGURIReference, SVGStylable {

  num get dx();

  void set dx(num value);

  num get dy();

  void set dy(num value);

  String get format();

  void set format(String value);

  String get glyphRef();

  void set glyphRef(String value);

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGGradientElement extends SVGElement, SVGURIReference, SVGExternalResourcesRequired, SVGStylable {

  static final int SVG_SPREADMETHOD_PAD = 1;

  static final int SVG_SPREADMETHOD_REFLECT = 2;

  static final int SVG_SPREADMETHOD_REPEAT = 3;

  static final int SVG_SPREADMETHOD_UNKNOWN = 0;

  SVGAnimatedTransformList get gradientTransform();

  SVGAnimatedEnumeration get gradientUnits();

  SVGAnimatedEnumeration get spreadMethod();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGHKernElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGImageElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedLength get height();

  SVGAnimatedPreserveAspectRatio get preserveAspectRatio();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGLangSpace {

  String get xmllang();

  void set xmllang(String value);

  String get xmlspace();

  void set xmlspace(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGLength {

  static final int SVG_LENGTHTYPE_CM = 6;

  static final int SVG_LENGTHTYPE_EMS = 3;

  static final int SVG_LENGTHTYPE_EXS = 4;

  static final int SVG_LENGTHTYPE_IN = 8;

  static final int SVG_LENGTHTYPE_MM = 7;

  static final int SVG_LENGTHTYPE_NUMBER = 1;

  static final int SVG_LENGTHTYPE_PC = 10;

  static final int SVG_LENGTHTYPE_PERCENTAGE = 2;

  static final int SVG_LENGTHTYPE_PT = 9;

  static final int SVG_LENGTHTYPE_PX = 5;

  static final int SVG_LENGTHTYPE_UNKNOWN = 0;

  int get unitType();

  num get value();

  void set value(num value);

  String get valueAsString();

  void set valueAsString(String value);

  num get valueInSpecifiedUnits();

  void set valueInSpecifiedUnits(num value);

  void convertToSpecifiedUnits(int unitType);

  void newValueSpecifiedUnits(int unitType, num valueInSpecifiedUnits);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGLengthList {

  int get numberOfItems();

  SVGLength appendItem(SVGLength item);

  void clear();

  SVGLength getItem(int index);

  SVGLength initialize(SVGLength item);

  SVGLength insertItemBefore(SVGLength item, int index);

  SVGLength removeItem(int index);

  SVGLength replaceItem(SVGLength item, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGLineElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedLength get x1();

  SVGAnimatedLength get x2();

  SVGAnimatedLength get y1();

  SVGAnimatedLength get y2();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGLinearGradientElement extends SVGGradientElement {

  SVGAnimatedLength get x1();

  SVGAnimatedLength get x2();

  SVGAnimatedLength get y1();

  SVGAnimatedLength get y2();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGLocatable {

  SVGElement get farthestViewportElement();

  SVGElement get nearestViewportElement();

  SVGRect getBBox();

  SVGMatrix getCTM();

  SVGMatrix getScreenCTM();

  SVGMatrix getTransformToElement(SVGElement element);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGMPathElement extends SVGElement, SVGURIReference, SVGExternalResourcesRequired {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGMarkerElement extends SVGElement, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGFitToViewBox {

  static final int SVG_MARKERUNITS_STROKEWIDTH = 2;

  static final int SVG_MARKERUNITS_UNKNOWN = 0;

  static final int SVG_MARKERUNITS_USERSPACEONUSE = 1;

  static final int SVG_MARKER_ORIENT_ANGLE = 2;

  static final int SVG_MARKER_ORIENT_AUTO = 1;

  static final int SVG_MARKER_ORIENT_UNKNOWN = 0;

  SVGAnimatedLength get markerHeight();

  SVGAnimatedEnumeration get markerUnits();

  SVGAnimatedLength get markerWidth();

  SVGAnimatedAngle get orientAngle();

  SVGAnimatedEnumeration get orientType();

  SVGAnimatedLength get refX();

  SVGAnimatedLength get refY();

  void setOrientToAngle(SVGAngle angle);

  void setOrientToAuto();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGMaskElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable {

  SVGAnimatedLength get height();

  SVGAnimatedEnumeration get maskContentUnits();

  SVGAnimatedEnumeration get maskUnits();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGMatrix {

  num get a();

  void set a(num value);

  num get b();

  void set b(num value);

  num get c();

  void set c(num value);

  num get d();

  void set d(num value);

  num get e();

  void set e(num value);

  num get f();

  void set f(num value);

  SVGMatrix flipX();

  SVGMatrix flipY();

  SVGMatrix inverse();

  SVGMatrix multiply(SVGMatrix secondMatrix);

  SVGMatrix rotate(num angle);

  SVGMatrix rotateFromVector(num x, num y);

  SVGMatrix scale(num scaleFactor);

  SVGMatrix scaleNonUniform(num scaleFactorX, num scaleFactorY);

  SVGMatrix skewX(num angle);

  SVGMatrix skewY(num angle);

  SVGMatrix translate(num x, num y);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGMetadataElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGMissingGlyphElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGNumber {

  num get value();

  void set value(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGNumberList {

  int get numberOfItems();

  SVGNumber appendItem(SVGNumber item);

  void clear();

  SVGNumber getItem(int index);

  SVGNumber initialize(SVGNumber item);

  SVGNumber insertItemBefore(SVGNumber item, int index);

  SVGNumber removeItem(int index);

  SVGNumber replaceItem(SVGNumber item, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPaint extends SVGColor {

  static final int SVG_PAINTTYPE_CURRENTCOLOR = 102;

  static final int SVG_PAINTTYPE_NONE = 101;

  static final int SVG_PAINTTYPE_RGBCOLOR = 1;

  static final int SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2;

  static final int SVG_PAINTTYPE_UNKNOWN = 0;

  static final int SVG_PAINTTYPE_URI = 107;

  static final int SVG_PAINTTYPE_URI_CURRENTCOLOR = 104;

  static final int SVG_PAINTTYPE_URI_NONE = 103;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR = 105;

  static final int SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106;

  int get paintType();

  String get uri();

  void setPaint(int paintType, String uri, String rgbColor, String iccColor);

  void setUri(String uri);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGPathSegList get animatedNormalizedPathSegList();

  SVGPathSegList get animatedPathSegList();

  SVGPathSegList get normalizedPathSegList();

  SVGAnimatedNumber get pathLength();

  SVGPathSegList get pathSegList();

  SVGPathSegArcAbs createSVGPathSegArcAbs(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag);

  SVGPathSegArcRel createSVGPathSegArcRel(num x, num y, num r1, num r2, num angle, bool largeArcFlag, bool sweepFlag);

  SVGPathSegClosePath createSVGPathSegClosePath();

  SVGPathSegCurvetoCubicAbs createSVGPathSegCurvetoCubicAbs(num x, num y, num x1, num y1, num x2, num y2);

  SVGPathSegCurvetoCubicRel createSVGPathSegCurvetoCubicRel(num x, num y, num x1, num y1, num x2, num y2);

  SVGPathSegCurvetoCubicSmoothAbs createSVGPathSegCurvetoCubicSmoothAbs(num x, num y, num x2, num y2);

  SVGPathSegCurvetoCubicSmoothRel createSVGPathSegCurvetoCubicSmoothRel(num x, num y, num x2, num y2);

  SVGPathSegCurvetoQuadraticAbs createSVGPathSegCurvetoQuadraticAbs(num x, num y, num x1, num y1);

  SVGPathSegCurvetoQuadraticRel createSVGPathSegCurvetoQuadraticRel(num x, num y, num x1, num y1);

  SVGPathSegCurvetoQuadraticSmoothAbs createSVGPathSegCurvetoQuadraticSmoothAbs(num x, num y);

  SVGPathSegCurvetoQuadraticSmoothRel createSVGPathSegCurvetoQuadraticSmoothRel(num x, num y);

  SVGPathSegLinetoAbs createSVGPathSegLinetoAbs(num x, num y);

  SVGPathSegLinetoHorizontalAbs createSVGPathSegLinetoHorizontalAbs(num x);

  SVGPathSegLinetoHorizontalRel createSVGPathSegLinetoHorizontalRel(num x);

  SVGPathSegLinetoRel createSVGPathSegLinetoRel(num x, num y);

  SVGPathSegLinetoVerticalAbs createSVGPathSegLinetoVerticalAbs(num y);

  SVGPathSegLinetoVerticalRel createSVGPathSegLinetoVerticalRel(num y);

  SVGPathSegMovetoAbs createSVGPathSegMovetoAbs(num x, num y);

  SVGPathSegMovetoRel createSVGPathSegMovetoRel(num x, num y);

  int getPathSegAtLength(num distance);

  SVGPoint getPointAtLength(num distance);

  num getTotalLength();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSeg {

  static final int PATHSEG_ARC_ABS = 10;

  static final int PATHSEG_ARC_REL = 11;

  static final int PATHSEG_CLOSEPATH = 1;

  static final int PATHSEG_CURVETO_CUBIC_ABS = 6;

  static final int PATHSEG_CURVETO_CUBIC_REL = 7;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16;

  static final int PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17;

  static final int PATHSEG_CURVETO_QUADRATIC_ABS = 8;

  static final int PATHSEG_CURVETO_QUADRATIC_REL = 9;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18;

  static final int PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19;

  static final int PATHSEG_LINETO_ABS = 4;

  static final int PATHSEG_LINETO_HORIZONTAL_ABS = 12;

  static final int PATHSEG_LINETO_HORIZONTAL_REL = 13;

  static final int PATHSEG_LINETO_REL = 5;

  static final int PATHSEG_LINETO_VERTICAL_ABS = 14;

  static final int PATHSEG_LINETO_VERTICAL_REL = 15;

  static final int PATHSEG_MOVETO_ABS = 2;

  static final int PATHSEG_MOVETO_REL = 3;

  static final int PATHSEG_UNKNOWN = 0;

  int get pathSegType();

  String get pathSegTypeAsLetter();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegArcAbs extends SVGPathSeg {

  num get angle();

  void set angle(num value);

  bool get largeArcFlag();

  void set largeArcFlag(bool value);

  num get r1();

  void set r1(num value);

  num get r2();

  void set r2(num value);

  bool get sweepFlag();

  void set sweepFlag(bool value);

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegArcRel extends SVGPathSeg {

  num get angle();

  void set angle(num value);

  bool get largeArcFlag();

  void set largeArcFlag(bool value);

  num get r1();

  void set r1(num value);

  num get r2();

  void set r2(num value);

  bool get sweepFlag();

  void set sweepFlag(bool value);

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegClosePath extends SVGPathSeg {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoCubicAbs extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get x1();

  void set x1(num value);

  num get x2();

  void set x2(num value);

  num get y();

  void set y(num value);

  num get y1();

  void set y1(num value);

  num get y2();

  void set y2(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoCubicRel extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get x1();

  void set x1(num value);

  num get x2();

  void set x2(num value);

  num get y();

  void set y(num value);

  num get y1();

  void set y1(num value);

  num get y2();

  void set y2(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoCubicSmoothAbs extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get x2();

  void set x2(num value);

  num get y();

  void set y(num value);

  num get y2();

  void set y2(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoCubicSmoothRel extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get x2();

  void set x2(num value);

  num get y();

  void set y(num value);

  num get y2();

  void set y2(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoQuadraticAbs extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get x1();

  void set x1(num value);

  num get y();

  void set y(num value);

  num get y1();

  void set y1(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoQuadraticRel extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get x1();

  void set x1(num value);

  num get y();

  void set y(num value);

  num get y1();

  void set y1(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoQuadraticSmoothAbs extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegCurvetoQuadraticSmoothRel extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegLinetoAbs extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegLinetoHorizontalAbs extends SVGPathSeg {

  num get x();

  void set x(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegLinetoHorizontalRel extends SVGPathSeg {

  num get x();

  void set x(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegLinetoRel extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegLinetoVerticalAbs extends SVGPathSeg {

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegLinetoVerticalRel extends SVGPathSeg {

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegList {

  int get numberOfItems();

  SVGPathSeg appendItem(SVGPathSeg newItem);

  void clear();

  SVGPathSeg getItem(int index);

  SVGPathSeg initialize(SVGPathSeg newItem);

  SVGPathSeg insertItemBefore(SVGPathSeg newItem, int index);

  SVGPathSeg removeItem(int index);

  SVGPathSeg replaceItem(SVGPathSeg newItem, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegMovetoAbs extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPathSegMovetoRel extends SVGPathSeg {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPatternElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGFitToViewBox {

  SVGAnimatedLength get height();

  SVGAnimatedEnumeration get patternContentUnits();

  SVGAnimatedTransformList get patternTransform();

  SVGAnimatedEnumeration get patternUnits();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPoint {

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);

  SVGPoint matrixTransform(SVGMatrix matrix);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPointList {

  int get numberOfItems();

  SVGPoint appendItem(SVGPoint item);

  void clear();

  SVGPoint getItem(int index);

  SVGPoint initialize(SVGPoint item);

  SVGPoint insertItemBefore(SVGPoint item, int index);

  SVGPoint removeItem(int index);

  SVGPoint replaceItem(SVGPoint item, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPolygonElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGPointList get animatedPoints();

  SVGPointList get points();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPolylineElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGPointList get animatedPoints();

  SVGPointList get points();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGPreserveAspectRatio {

  static final int SVG_MEETORSLICE_MEET = 1;

  static final int SVG_MEETORSLICE_SLICE = 2;

  static final int SVG_MEETORSLICE_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_NONE = 1;

  static final int SVG_PRESERVEASPECTRATIO_UNKNOWN = 0;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMID = 7;

  static final int SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMID = 6;

  static final int SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMAX = 8;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMID = 5;

  static final int SVG_PRESERVEASPECTRATIO_XMINYMIN = 2;

  int get align();

  void set align(int value);

  int get meetOrSlice();

  void set meetOrSlice(int value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGRadialGradientElement extends SVGGradientElement {

  SVGAnimatedLength get cx();

  SVGAnimatedLength get cy();

  SVGAnimatedLength get fx();

  SVGAnimatedLength get fy();

  SVGAnimatedLength get r();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGRect {

  num get height();

  void set height(num value);

  num get width();

  void set width(num value);

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGRectElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGAnimatedLength get height();

  SVGAnimatedLength get rx();

  SVGAnimatedLength get ry();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGRenderingIntent {

  static final int RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5;

  static final int RENDERING_INTENT_AUTO = 1;

  static final int RENDERING_INTENT_PERCEPTUAL = 2;

  static final int RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3;

  static final int RENDERING_INTENT_SATURATION = 4;

  static final int RENDERING_INTENT_UNKNOWN = 0;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGSVGElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGLocatable, SVGFitToViewBox, SVGZoomAndPan {

  String get contentScriptType();

  void set contentScriptType(String value);

  String get contentStyleType();

  void set contentStyleType(String value);

  num get currentScale();

  void set currentScale(num value);

  SVGPoint get currentTranslate();

  SVGAnimatedLength get height();

  num get pixelUnitToMillimeterX();

  num get pixelUnitToMillimeterY();

  num get screenPixelToMillimeterX();

  num get screenPixelToMillimeterY();

  bool get useCurrentView();

  void set useCurrentView(bool value);

  SVGRect get viewport();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();

  bool animationsPaused();

  bool checkEnclosure(SVGElement element, SVGRect rect);

  bool checkIntersection(SVGElement element, SVGRect rect);

  SVGAngle createSVGAngle();

  SVGLength createSVGLength();

  SVGMatrix createSVGMatrix();

  SVGNumber createSVGNumber();

  SVGPoint createSVGPoint();

  SVGRect createSVGRect();

  SVGTransform createSVGTransform();

  SVGTransform createSVGTransformFromMatrix(SVGMatrix matrix);

  void deselectAll();

  void forceRedraw();

  num getCurrentTime();

  Element getElementById(String elementId);

  NodeList getEnclosureList(SVGRect rect, SVGElement referenceElement);

  NodeList getIntersectionList(SVGRect rect, SVGElement referenceElement);

  void pauseAnimations();

  void setCurrentTime(num seconds);

  int suspendRedraw(int maxWaitMilliseconds);

  void unpauseAnimations();

  void unsuspendRedraw(int suspendHandleId);

  void unsuspendRedrawAll();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGScriptElement extends SVGElement, SVGURIReference, SVGExternalResourcesRequired {

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGSetElement extends SVGAnimationElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGStopElement extends SVGElement, SVGStylable {

  SVGAnimatedNumber get offset();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGStringList {

  int get numberOfItems();

  String appendItem(String item);

  void clear();

  String getItem(int index);

  String initialize(String item);

  String insertItemBefore(String item, int index);

  String removeItem(int index);

  String replaceItem(String item, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGStylable {

  SVGAnimatedString get className();

  CSSStyleDeclaration get style();

  CSSValue getPresentationAttribute(String name);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGStyleElement extends SVGElement, SVGLangSpace {

  String get media();

  void set media(String value);

  String get title();

  void set title(String value);

  String get type();

  void set type(String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGSwitchElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGSymbolElement extends SVGElement, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGFitToViewBox {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTRefElement extends SVGTextPositioningElement, SVGURIReference {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTSpanElement extends SVGTextPositioningElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTests {

  SVGStringList get requiredExtensions();

  SVGStringList get requiredFeatures();

  SVGStringList get systemLanguage();

  bool hasExtension(String extension);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTextContentElement extends SVGElement, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable {

  static final int LENGTHADJUST_SPACING = 1;

  static final int LENGTHADJUST_SPACINGANDGLYPHS = 2;

  static final int LENGTHADJUST_UNKNOWN = 0;

  SVGAnimatedEnumeration get lengthAdjust();

  SVGAnimatedLength get textLength();

  int getCharNumAtPosition(SVGPoint point);

  num getComputedTextLength();

  SVGPoint getEndPositionOfChar(int offset);

  SVGRect getExtentOfChar(int offset);

  int getNumberOfChars();

  num getRotationOfChar(int offset);

  SVGPoint getStartPositionOfChar(int offset);

  num getSubStringLength(int offset, int length);

  void selectSubString(int offset, int length);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTextElement extends SVGTextPositioningElement, SVGTransformable {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTextPathElement extends SVGTextContentElement, SVGURIReference {

  static final int TEXTPATH_METHODTYPE_ALIGN = 1;

  static final int TEXTPATH_METHODTYPE_STRETCH = 2;

  static final int TEXTPATH_METHODTYPE_UNKNOWN = 0;

  static final int TEXTPATH_SPACINGTYPE_AUTO = 1;

  static final int TEXTPATH_SPACINGTYPE_EXACT = 2;

  static final int TEXTPATH_SPACINGTYPE_UNKNOWN = 0;

  SVGAnimatedEnumeration get method();

  SVGAnimatedEnumeration get spacing();

  SVGAnimatedLength get startOffset();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTextPositioningElement extends SVGTextContentElement {

  SVGAnimatedLengthList get dx();

  SVGAnimatedLengthList get dy();

  SVGAnimatedNumberList get rotate();

  SVGAnimatedLengthList get x();

  SVGAnimatedLengthList get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTitleElement extends SVGElement, SVGLangSpace, SVGStylable {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTransform {

  static final int SVG_TRANSFORM_MATRIX = 1;

  static final int SVG_TRANSFORM_ROTATE = 4;

  static final int SVG_TRANSFORM_SCALE = 3;

  static final int SVG_TRANSFORM_SKEWX = 5;

  static final int SVG_TRANSFORM_SKEWY = 6;

  static final int SVG_TRANSFORM_TRANSLATE = 2;

  static final int SVG_TRANSFORM_UNKNOWN = 0;

  num get angle();

  SVGMatrix get matrix();

  int get type();

  void setMatrix(SVGMatrix matrix);

  void setRotate(num angle, num cx, num cy);

  void setScale(num sx, num sy);

  void setSkewX(num angle);

  void setSkewY(num angle);

  void setTranslate(num tx, num ty);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTransformList {

  int get numberOfItems();

  SVGTransform appendItem(SVGTransform item);

  void clear();

  SVGTransform consolidate();

  SVGTransform createSVGTransformFromMatrix(SVGMatrix matrix);

  SVGTransform getItem(int index);

  SVGTransform initialize(SVGTransform item);

  SVGTransform insertItemBefore(SVGTransform item, int index);

  SVGTransform removeItem(int index);

  SVGTransform replaceItem(SVGTransform item, int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGTransformable extends SVGLocatable {

  SVGAnimatedTransformList get transform();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGURIReference {

  SVGAnimatedString get href();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGUnitTypes {

  static final int SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2;

  static final int SVG_UNIT_TYPE_UNKNOWN = 0;

  static final int SVG_UNIT_TYPE_USERSPACEONUSE = 1;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGUseElement extends SVGElement, SVGURIReference, SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGStylable, SVGTransformable {

  SVGElementInstance get animatedInstanceRoot();

  SVGAnimatedLength get height();

  SVGElementInstance get instanceRoot();

  SVGAnimatedLength get width();

  SVGAnimatedLength get x();

  SVGAnimatedLength get y();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGVKernElement extends SVGElement {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGViewElement extends SVGElement, SVGExternalResourcesRequired, SVGFitToViewBox, SVGZoomAndPan {

  SVGStringList get viewTarget();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGViewSpec extends SVGZoomAndPan, SVGFitToViewBox {

  String get preserveAspectRatioString();

  SVGTransformList get transform();

  String get transformString();

  String get viewBoxString();

  SVGElement get viewTarget();

  String get viewTargetString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGZoomAndPan {

  static final int SVG_ZOOMANDPAN_DISABLE = 1;

  static final int SVG_ZOOMANDPAN_MAGNIFY = 2;

  static final int SVG_ZOOMANDPAN_UNKNOWN = 0;

  int get zoomAndPan();

  void set zoomAndPan(int value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SVGZoomEvent extends UIEvent {

  num get newScale();

  SVGPoint get newTranslate();

  num get previousScale();

  SVGPoint get previousTranslate();

  SVGRect get zoomRectScreen();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Screen {

  int get availHeight();

  int get availLeft();

  int get availTop();

  int get availWidth();

  int get colorDepth();

  int get height();

  int get pixelDepth();

  int get width();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ScriptProfile {

  ScriptProfileNode get head();

  String get title();

  int get uid();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ScriptProfileNode {

  int get callUID();

  List get children();

  String get functionName();

  int get lineNumber();

  int get numberOfCalls();

  num get selfTime();

  num get totalTime();

  String get url();

  bool get visible();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SharedWorker extends AbstractWorker {

  MessagePort get port();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SharedWorkerGlobalScope extends WorkerContext {

  String get name();

  EventListener get onconnect();

  void set onconnect(EventListener value);
}

interface SharedWorkerContext extends SharedWorkerGlobalScope {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SpeechInputEvent extends Event {

  SpeechInputResultList get results();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SpeechInputResult {

  num get confidence();

  String get utterance();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface SpeechInputResultList {

  int get length();

  SpeechInputResult item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Storage {

  int get length();

  void clear();

  String getItem(String key);

  String key(int index);

  void removeItem(String key);

  void setItem(String key, String data);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface StorageEvent extends Event {

  String get key();

  String get newValue();

  String get oldValue();

  Storage get storageArea();

  String get url();

  void initStorageEvent(String typeArg, bool canBubbleArg, bool cancelableArg, String keyArg, String oldValueArg, String newValueArg, String urlArg, Storage storageAreaArg);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface StorageInfo {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;

  void queryUsageAndQuota(int storageType, [StorageInfoUsageCallback usageCallback, StorageInfoErrorCallback errorCallback]);

  void requestQuota(int storageType, int newQuotaInBytes, [StorageInfoQuotaCallback quotaCallback, StorageInfoErrorCallback errorCallback]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StorageInfoErrorCallback(DOMException error);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StorageInfoQuotaCallback(int grantedQuotaInBytes);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StorageInfoUsageCallback(int currentUsageInBytes, int currentQuotaInBytes);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef bool StringCallback(String data);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface StyleMedia {

  String get type();

  bool matchMedium(String mediaquery);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface StyleSheet {

  bool get disabled();

  void set disabled(bool value);

  String get href();

  MediaList get media();

  Node get ownerNode();

  StyleSheet get parentStyleSheet();

  String get title();

  String get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface StyleSheetList extends List<StyleSheet> {

  int get length();

  StyleSheet item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Text extends CharacterData {

  String get wholeText();

  Text replaceWholeText(String content);

  Text splitText(int offset);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TextEvent extends UIEvent {

  String get data();

  void initTextEvent(String typeArg, bool canBubbleArg, bool cancelableArg, DOMWindow viewArg, String dataArg);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TextMetrics {

  num get width();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TextTrack {

  static final int DISABLED = 0;

  static final int HIDDEN = 1;

  static final int SHOWING = 2;

  TextTrackCueList get activeCues();

  TextTrackCueList get cues();

  String get kind();

  String get label();

  String get language();

  int get mode();

  void set mode(int value);

  EventListener get oncuechange();

  void set oncuechange(EventListener value);

  void addCue(TextTrackCue cue);

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void removeCue(TextTrackCue cue);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TextTrackCue {

  String get alignment();

  void set alignment(String value);

  String get direction();

  void set direction(String value);

  num get endTime();

  void set endTime(num value);

  String get id();

  void set id(String value);

  int get linePosition();

  void set linePosition(int value);

  EventListener get onenter();

  void set onenter(EventListener value);

  EventListener get onexit();

  void set onexit(EventListener value);

  bool get pauseOnExit();

  void set pauseOnExit(bool value);

  int get size();

  void set size(int value);

  bool get snapToLines();

  void set snapToLines(bool value);

  num get startTime();

  void set startTime(num value);

  String get text();

  void set text(String value);

  int get textPosition();

  void set textPosition(int value);

  TextTrack get track();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  DocumentFragment getCueAsHTML();

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TextTrackCueList {

  int get length();

  TextTrackCue getCueById(String id);

  TextTrackCue item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TextTrackList {

  int get length();

  EventListener get onaddtrack();

  void set onaddtrack(EventListener value);

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  TextTrack item(int index);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TimeRanges {

  int get length();

  num end(int index);

  num start(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Touch {

  int get clientX();

  int get clientY();

  int get identifier();

  int get pageX();

  int get pageY();

  int get screenX();

  int get screenY();

  EventTarget get target();

  num get webkitForce();

  int get webkitRadiusX();

  int get webkitRadiusY();

  num get webkitRotationAngle();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TouchEvent extends UIEvent {

  bool get altKey();

  TouchList get changedTouches();

  bool get ctrlKey();

  bool get metaKey();

  bool get shiftKey();

  TouchList get targetTouches();

  TouchList get touches();

  void initTouchEvent(TouchList touches, TouchList targetTouches, TouchList changedTouches, String type, DOMWindow view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TouchList extends List<Touch> {

  int get length();

  Touch item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TrackEvent extends Event {

  Object get track();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface TreeWalker {

  Node get currentNode();

  void set currentNode(Node value);

  bool get expandEntityReferences();

  NodeFilter get filter();

  Node get root();

  int get whatToShow();

  Node firstChild();

  Node lastChild();

  Node nextNode();

  Node nextSibling();

  Node parentNode();

  Node previousNode();

  Node previousSibling();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface UIEvent extends Event {

  int get charCode();

  int get detail();

  int get keyCode();

  int get layerX();

  int get layerY();

  int get pageX();

  int get pageY();

  DOMWindow get view();

  int get which();

  void initUIEvent(String type, bool canBubble, bool cancelable, DOMWindow view, int detail);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Uint16Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Uint16Array(int length);

  Uint16Array.fromList(List<int> list);

  Uint16Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 2;

  int get length();

  void setElements(Object array, [int offset]);

  Uint16Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Uint32Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Uint32Array(int length);

  Uint32Array.fromList(List<int> list);

  Uint32Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 4;

  int get length();

  void setElements(Object array, [int offset]);

  Uint32Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Uint8Array extends ArrayBufferView, List<int> default _TypedArrayFactoryProvider {

  Uint8Array(int length);

  Uint8Array.fromList(List<int> list);

  Uint8Array.fromBuffer(ArrayBuffer buffer);

  static final int BYTES_PER_ELEMENT = 1;

  int get length();

  void setElements(Object array, [int offset]);

  Uint8Array subarray(int start, [int end]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface ValidityState {

  bool get customError();

  bool get patternMismatch();

  bool get rangeOverflow();

  bool get rangeUnderflow();

  bool get stepMismatch();

  bool get tooLong();

  bool get typeMismatch();

  bool get valid();

  bool get valueMissing();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

typedef void VoidCallback();
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WaveShaperNode extends AudioNode {

  Float32Array get curve();

  void set curve(Float32Array value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLActiveInfo {

  String get name();

  int get size();

  int get type();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLBuffer {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLCompressedTextures {

  static final int COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 0x8C02;

  static final int COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;

  static final int COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;

  static final int COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 0x8C00;

  static final int COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;

  static final int ETC1_RGB8_OES = 0x8D64;

  void compressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, ArrayBufferView data);

  void compressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, ArrayBufferView data);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLContextAttributes {

  bool get alpha();

  void set alpha(bool value);

  bool get antialias();

  void set antialias(bool value);

  bool get depth();

  void set depth(bool value);

  bool get premultipliedAlpha();

  void set premultipliedAlpha(bool value);

  bool get preserveDrawingBuffer();

  void set preserveDrawingBuffer(bool value);

  bool get stencil();

  void set stencil(bool value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLContextEvent extends Event {

  String get statusMessage();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLDebugRendererInfo {

  static final int UNMASKED_RENDERER_WEBGL = 0x9246;

  static final int UNMASKED_VENDOR_WEBGL = 0x9245;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLDebugShaders {

  String getTranslatedShaderSource(WebGLShader shader);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLFramebuffer {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLLoseContext {

  void loseContext();

  void restoreContext();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLProgram {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLRenderbuffer {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLRenderingContext extends CanvasRenderingContext {

  static final int ACTIVE_ATTRIBUTES = 0x8B89;

  static final int ACTIVE_TEXTURE = 0x84E0;

  static final int ACTIVE_UNIFORMS = 0x8B86;

  static final int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  static final int ALIASED_POINT_SIZE_RANGE = 0x846D;

  static final int ALPHA = 0x1906;

  static final int ALPHA_BITS = 0x0D55;

  static final int ALWAYS = 0x0207;

  static final int ARRAY_BUFFER = 0x8892;

  static final int ARRAY_BUFFER_BINDING = 0x8894;

  static final int ATTACHED_SHADERS = 0x8B85;

  static final int BACK = 0x0405;

  static final int BLEND = 0x0BE2;

  static final int BLEND_COLOR = 0x8005;

  static final int BLEND_DST_ALPHA = 0x80CA;

  static final int BLEND_DST_RGB = 0x80C8;

  static final int BLEND_EQUATION = 0x8009;

  static final int BLEND_EQUATION_ALPHA = 0x883D;

  static final int BLEND_EQUATION_RGB = 0x8009;

  static final int BLEND_SRC_ALPHA = 0x80CB;

  static final int BLEND_SRC_RGB = 0x80C9;

  static final int BLUE_BITS = 0x0D54;

  static final int BOOL = 0x8B56;

  static final int BOOL_VEC2 = 0x8B57;

  static final int BOOL_VEC3 = 0x8B58;

  static final int BOOL_VEC4 = 0x8B59;

  static final int BROWSER_DEFAULT_WEBGL = 0x9244;

  static final int BUFFER_SIZE = 0x8764;

  static final int BUFFER_USAGE = 0x8765;

  static final int BYTE = 0x1400;

  static final int CCW = 0x0901;

  static final int CLAMP_TO_EDGE = 0x812F;

  static final int COLOR_ATTACHMENT0 = 0x8CE0;

  static final int COLOR_BUFFER_BIT = 0x00004000;

  static final int COLOR_CLEAR_VALUE = 0x0C22;

  static final int COLOR_WRITEMASK = 0x0C23;

  static final int COMPILE_STATUS = 0x8B81;

  static final int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  static final int CONSTANT_ALPHA = 0x8003;

  static final int CONSTANT_COLOR = 0x8001;

  static final int CONTEXT_LOST_WEBGL = 0x9242;

  static final int CULL_FACE = 0x0B44;

  static final int CULL_FACE_MODE = 0x0B45;

  static final int CURRENT_PROGRAM = 0x8B8D;

  static final int CURRENT_VERTEX_ATTRIB = 0x8626;

  static final int CW = 0x0900;

  static final int DECR = 0x1E03;

  static final int DECR_WRAP = 0x8508;

  static final int DELETE_STATUS = 0x8B80;

  static final int DEPTH_ATTACHMENT = 0x8D00;

  static final int DEPTH_BITS = 0x0D56;

  static final int DEPTH_BUFFER_BIT = 0x00000100;

  static final int DEPTH_CLEAR_VALUE = 0x0B73;

  static final int DEPTH_COMPONENT = 0x1902;

  static final int DEPTH_COMPONENT16 = 0x81A5;

  static final int DEPTH_FUNC = 0x0B74;

  static final int DEPTH_RANGE = 0x0B70;

  static final int DEPTH_STENCIL = 0x84F9;

  static final int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  static final int DEPTH_TEST = 0x0B71;

  static final int DEPTH_WRITEMASK = 0x0B72;

  static final int DITHER = 0x0BD0;

  static final int DONT_CARE = 0x1100;

  static final int DST_ALPHA = 0x0304;

  static final int DST_COLOR = 0x0306;

  static final int DYNAMIC_DRAW = 0x88E8;

  static final int ELEMENT_ARRAY_BUFFER = 0x8893;

  static final int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  static final int EQUAL = 0x0202;

  static final int FASTEST = 0x1101;

  static final int FLOAT = 0x1406;

  static final int FLOAT_MAT2 = 0x8B5A;

  static final int FLOAT_MAT3 = 0x8B5B;

  static final int FLOAT_MAT4 = 0x8B5C;

  static final int FLOAT_VEC2 = 0x8B50;

  static final int FLOAT_VEC3 = 0x8B51;

  static final int FLOAT_VEC4 = 0x8B52;

  static final int FRAGMENT_SHADER = 0x8B30;

  static final int FRAMEBUFFER = 0x8D40;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  static final int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  static final int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  static final int FRAMEBUFFER_BINDING = 0x8CA6;

  static final int FRAMEBUFFER_COMPLETE = 0x8CD5;

  static final int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  static final int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  static final int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  static final int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  static final int FRONT = 0x0404;

  static final int FRONT_AND_BACK = 0x0408;

  static final int FRONT_FACE = 0x0B46;

  static final int FUNC_ADD = 0x8006;

  static final int FUNC_REVERSE_SUBTRACT = 0x800B;

  static final int FUNC_SUBTRACT = 0x800A;

  static final int GENERATE_MIPMAP_HINT = 0x8192;

  static final int GEQUAL = 0x0206;

  static final int GREATER = 0x0204;

  static final int GREEN_BITS = 0x0D53;

  static final int HIGH_FLOAT = 0x8DF2;

  static final int HIGH_INT = 0x8DF5;

  static final int INCR = 0x1E02;

  static final int INCR_WRAP = 0x8507;

  static final int INT = 0x1404;

  static final int INT_VEC2 = 0x8B53;

  static final int INT_VEC3 = 0x8B54;

  static final int INT_VEC4 = 0x8B55;

  static final int INVALID_ENUM = 0x0500;

  static final int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  static final int INVALID_OPERATION = 0x0502;

  static final int INVALID_VALUE = 0x0501;

  static final int INVERT = 0x150A;

  static final int KEEP = 0x1E00;

  static final int LEQUAL = 0x0203;

  static final int LESS = 0x0201;

  static final int LINEAR = 0x2601;

  static final int LINEAR_MIPMAP_LINEAR = 0x2703;

  static final int LINEAR_MIPMAP_NEAREST = 0x2701;

  static final int LINES = 0x0001;

  static final int LINE_LOOP = 0x0002;

  static final int LINE_STRIP = 0x0003;

  static final int LINE_WIDTH = 0x0B21;

  static final int LINK_STATUS = 0x8B82;

  static final int LOW_FLOAT = 0x8DF0;

  static final int LOW_INT = 0x8DF3;

  static final int LUMINANCE = 0x1909;

  static final int LUMINANCE_ALPHA = 0x190A;

  static final int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  static final int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  static final int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  static final int MAX_RENDERBUFFER_SIZE = 0x84E8;

  static final int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  static final int MAX_TEXTURE_SIZE = 0x0D33;

  static final int MAX_VARYING_VECTORS = 0x8DFC;

  static final int MAX_VERTEX_ATTRIBS = 0x8869;

  static final int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  static final int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  static final int MAX_VIEWPORT_DIMS = 0x0D3A;

  static final int MEDIUM_FLOAT = 0x8DF1;

  static final int MEDIUM_INT = 0x8DF4;

  static final int MIRRORED_REPEAT = 0x8370;

  static final int NEAREST = 0x2600;

  static final int NEAREST_MIPMAP_LINEAR = 0x2702;

  static final int NEAREST_MIPMAP_NEAREST = 0x2700;

  static final int NEVER = 0x0200;

  static final int NICEST = 0x1102;

  static final int NONE = 0;

  static final int NOTEQUAL = 0x0205;

  static final int NO_ERROR = 0;

  static final int NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;

  static final int ONE = 1;

  static final int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  static final int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  static final int ONE_MINUS_DST_ALPHA = 0x0305;

  static final int ONE_MINUS_DST_COLOR = 0x0307;

  static final int ONE_MINUS_SRC_ALPHA = 0x0303;

  static final int ONE_MINUS_SRC_COLOR = 0x0301;

  static final int OUT_OF_MEMORY = 0x0505;

  static final int PACK_ALIGNMENT = 0x0D05;

  static final int POINTS = 0x0000;

  static final int POLYGON_OFFSET_FACTOR = 0x8038;

  static final int POLYGON_OFFSET_FILL = 0x8037;

  static final int POLYGON_OFFSET_UNITS = 0x2A00;

  static final int RED_BITS = 0x0D52;

  static final int RENDERBUFFER = 0x8D41;

  static final int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  static final int RENDERBUFFER_BINDING = 0x8CA7;

  static final int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  static final int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  static final int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  static final int RENDERBUFFER_HEIGHT = 0x8D43;

  static final int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  static final int RENDERBUFFER_RED_SIZE = 0x8D50;

  static final int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  static final int RENDERBUFFER_WIDTH = 0x8D42;

  static final int RENDERER = 0x1F01;

  static final int REPEAT = 0x2901;

  static final int REPLACE = 0x1E01;

  static final int RGB = 0x1907;

  static final int RGB565 = 0x8D62;

  static final int RGB5_A1 = 0x8057;

  static final int RGBA = 0x1908;

  static final int RGBA4 = 0x8056;

  static final int SAMPLER_2D = 0x8B5E;

  static final int SAMPLER_CUBE = 0x8B60;

  static final int SAMPLES = 0x80A9;

  static final int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  static final int SAMPLE_BUFFERS = 0x80A8;

  static final int SAMPLE_COVERAGE = 0x80A0;

  static final int SAMPLE_COVERAGE_INVERT = 0x80AB;

  static final int SAMPLE_COVERAGE_VALUE = 0x80AA;

  static final int SCISSOR_BOX = 0x0C10;

  static final int SCISSOR_TEST = 0x0C11;

  static final int SHADER_COMPILER = 0x8DFA;

  static final int SHADER_TYPE = 0x8B4F;

  static final int SHADING_LANGUAGE_VERSION = 0x8B8C;

  static final int SHORT = 0x1402;

  static final int SRC_ALPHA = 0x0302;

  static final int SRC_ALPHA_SATURATE = 0x0308;

  static final int SRC_COLOR = 0x0300;

  static final int STATIC_DRAW = 0x88E4;

  static final int STENCIL_ATTACHMENT = 0x8D20;

  static final int STENCIL_BACK_FAIL = 0x8801;

  static final int STENCIL_BACK_FUNC = 0x8800;

  static final int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  static final int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  static final int STENCIL_BACK_REF = 0x8CA3;

  static final int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  static final int STENCIL_BACK_WRITEMASK = 0x8CA5;

  static final int STENCIL_BITS = 0x0D57;

  static final int STENCIL_BUFFER_BIT = 0x00000400;

  static final int STENCIL_CLEAR_VALUE = 0x0B91;

  static final int STENCIL_FAIL = 0x0B94;

  static final int STENCIL_FUNC = 0x0B92;

  static final int STENCIL_INDEX = 0x1901;

  static final int STENCIL_INDEX8 = 0x8D48;

  static final int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  static final int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  static final int STENCIL_REF = 0x0B97;

  static final int STENCIL_TEST = 0x0B90;

  static final int STENCIL_VALUE_MASK = 0x0B93;

  static final int STENCIL_WRITEMASK = 0x0B98;

  static final int STREAM_DRAW = 0x88E0;

  static final int SUBPIXEL_BITS = 0x0D50;

  static final int TEXTURE = 0x1702;

  static final int TEXTURE0 = 0x84C0;

  static final int TEXTURE1 = 0x84C1;

  static final int TEXTURE10 = 0x84CA;

  static final int TEXTURE11 = 0x84CB;

  static final int TEXTURE12 = 0x84CC;

  static final int TEXTURE13 = 0x84CD;

  static final int TEXTURE14 = 0x84CE;

  static final int TEXTURE15 = 0x84CF;

  static final int TEXTURE16 = 0x84D0;

  static final int TEXTURE17 = 0x84D1;

  static final int TEXTURE18 = 0x84D2;

  static final int TEXTURE19 = 0x84D3;

  static final int TEXTURE2 = 0x84C2;

  static final int TEXTURE20 = 0x84D4;

  static final int TEXTURE21 = 0x84D5;

  static final int TEXTURE22 = 0x84D6;

  static final int TEXTURE23 = 0x84D7;

  static final int TEXTURE24 = 0x84D8;

  static final int TEXTURE25 = 0x84D9;

  static final int TEXTURE26 = 0x84DA;

  static final int TEXTURE27 = 0x84DB;

  static final int TEXTURE28 = 0x84DC;

  static final int TEXTURE29 = 0x84DD;

  static final int TEXTURE3 = 0x84C3;

  static final int TEXTURE30 = 0x84DE;

  static final int TEXTURE31 = 0x84DF;

  static final int TEXTURE4 = 0x84C4;

  static final int TEXTURE5 = 0x84C5;

  static final int TEXTURE6 = 0x84C6;

  static final int TEXTURE7 = 0x84C7;

  static final int TEXTURE8 = 0x84C8;

  static final int TEXTURE9 = 0x84C9;

  static final int TEXTURE_2D = 0x0DE1;

  static final int TEXTURE_BINDING_2D = 0x8069;

  static final int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  static final int TEXTURE_CUBE_MAP = 0x8513;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  static final int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  static final int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  static final int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  static final int TEXTURE_MAG_FILTER = 0x2800;

  static final int TEXTURE_MIN_FILTER = 0x2801;

  static final int TEXTURE_WRAP_S = 0x2802;

  static final int TEXTURE_WRAP_T = 0x2803;

  static final int TRIANGLES = 0x0004;

  static final int TRIANGLE_FAN = 0x0006;

  static final int TRIANGLE_STRIP = 0x0005;

  static final int UNPACK_ALIGNMENT = 0x0CF5;

  static final int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  static final int UNPACK_FLIP_Y_WEBGL = 0x9240;

  static final int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  static final int UNSIGNED_BYTE = 0x1401;

  static final int UNSIGNED_INT = 0x1405;

  static final int UNSIGNED_SHORT = 0x1403;

  static final int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  static final int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  static final int UNSIGNED_SHORT_5_6_5 = 0x8363;

  static final int VALIDATE_STATUS = 0x8B83;

  static final int VENDOR = 0x1F00;

  static final int VERSION = 0x1F02;

  static final int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  static final int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  static final int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  static final int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  static final int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  static final int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  static final int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  static final int VERTEX_SHADER = 0x8B31;

  static final int VIEWPORT = 0x0BA2;

  static final int ZERO = 0;

  int get drawingBufferHeight();

  int get drawingBufferWidth();

  void activeTexture(int texture);

  void attachShader(WebGLProgram program, WebGLShader shader);

  void bindAttribLocation(WebGLProgram program, int index, String name);

  void bindBuffer(int target, WebGLBuffer buffer);

  void bindFramebuffer(int target, WebGLFramebuffer framebuffer);

  void bindRenderbuffer(int target, WebGLRenderbuffer renderbuffer);

  void bindTexture(int target, WebGLTexture texture);

  void blendColor(num red, num green, num blue, num alpha);

  void blendEquation(int mode);

  void blendEquationSeparate(int modeRGB, int modeAlpha);

  void blendFunc(int sfactor, int dfactor);

  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha);

  void bufferData(int target, var data_OR_size, int usage);

  void bufferSubData(int target, int offset, var data);

  int checkFramebufferStatus(int target);

  void clear(int mask);

  void clearColor(num red, num green, num blue, num alpha);

  void clearDepth(num depth);

  void clearStencil(int s);

  void colorMask(bool red, bool green, bool blue, bool alpha);

  void compileShader(WebGLShader shader);

  void copyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border);

  void copyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height);

  WebGLBuffer createBuffer();

  WebGLFramebuffer createFramebuffer();

  WebGLProgram createProgram();

  WebGLRenderbuffer createRenderbuffer();

  WebGLShader createShader(int type);

  WebGLTexture createTexture();

  void cullFace(int mode);

  void deleteBuffer(WebGLBuffer buffer);

  void deleteFramebuffer(WebGLFramebuffer framebuffer);

  void deleteProgram(WebGLProgram program);

  void deleteRenderbuffer(WebGLRenderbuffer renderbuffer);

  void deleteShader(WebGLShader shader);

  void deleteTexture(WebGLTexture texture);

  void depthFunc(int func);

  void depthMask(bool flag);

  void depthRange(num zNear, num zFar);

  void detachShader(WebGLProgram program, WebGLShader shader);

  void disable(int cap);

  void disableVertexAttribArray(int index);

  void drawArrays(int mode, int first, int count);

  void drawElements(int mode, int count, int type, int offset);

  void enable(int cap);

  void enableVertexAttribArray(int index);

  void finish();

  void flush();

  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, WebGLRenderbuffer renderbuffer);

  void framebufferTexture2D(int target, int attachment, int textarget, WebGLTexture texture, int level);

  void frontFace(int mode);

  void generateMipmap(int target);

  WebGLActiveInfo getActiveAttrib(WebGLProgram program, int index);

  WebGLActiveInfo getActiveUniform(WebGLProgram program, int index);

  List getAttachedShaders(WebGLProgram program);

  int getAttribLocation(WebGLProgram program, String name);

  Object getBufferParameter(int target, int pname);

  WebGLContextAttributes getContextAttributes();

  int getError();

  Object getExtension(String name);

  Object getFramebufferAttachmentParameter(int target, int attachment, int pname);

  Object getParameter(int pname);

  String getProgramInfoLog(WebGLProgram program);

  Object getProgramParameter(WebGLProgram program, int pname);

  Object getRenderbufferParameter(int target, int pname);

  String getShaderInfoLog(WebGLShader shader);

  Object getShaderParameter(WebGLShader shader, int pname);

  String getShaderSource(WebGLShader shader);

  Object getTexParameter(int target, int pname);

  Object getUniform(WebGLProgram program, WebGLUniformLocation location);

  WebGLUniformLocation getUniformLocation(WebGLProgram program, String name);

  Object getVertexAttrib(int index, int pname);

  int getVertexAttribOffset(int index, int pname);

  void hint(int target, int mode);

  bool isBuffer(WebGLBuffer buffer);

  bool isContextLost();

  bool isEnabled(int cap);

  bool isFramebuffer(WebGLFramebuffer framebuffer);

  bool isProgram(WebGLProgram program);

  bool isRenderbuffer(WebGLRenderbuffer renderbuffer);

  bool isShader(WebGLShader shader);

  bool isTexture(WebGLTexture texture);

  void lineWidth(num width);

  void linkProgram(WebGLProgram program);

  void pixelStorei(int pname, int param);

  void polygonOffset(num factor, num units);

  void readPixels(int x, int y, int width, int height, int format, int type, ArrayBufferView pixels);

  void releaseShaderCompiler();

  void renderbufferStorage(int target, int internalformat, int width, int height);

  void sampleCoverage(num value, bool invert);

  void scissor(int x, int y, int width, int height);

  void shaderSource(WebGLShader shader, String string);

  void stencilFunc(int func, int ref, int mask);

  void stencilFuncSeparate(int face, int func, int ref, int mask);

  void stencilMask(int mask);

  void stencilMaskSeparate(int face, int mask);

  void stencilOp(int fail, int zfail, int zpass);

  void stencilOpSeparate(int face, int fail, int zfail, int zpass);

  void texImage2D(int target, int level, int internalformat, int format_OR_width, int height_OR_type, var border_OR_canvas_OR_image_OR_pixels_OR_video, [int format, int type, ArrayBufferView pixels]);

  void texParameterf(int target, int pname, num param);

  void texParameteri(int target, int pname, int param);

  void texSubImage2D(int target, int level, int xoffset, int yoffset, int format_OR_width, int height_OR_type, var canvas_OR_format_OR_image_OR_pixels_OR_video, [int type, ArrayBufferView pixels]);

  void uniform1f(WebGLUniformLocation location, num x);

  void uniform1fv(WebGLUniformLocation location, Float32Array v);

  void uniform1i(WebGLUniformLocation location, int x);

  void uniform1iv(WebGLUniformLocation location, Int32Array v);

  void uniform2f(WebGLUniformLocation location, num x, num y);

  void uniform2fv(WebGLUniformLocation location, Float32Array v);

  void uniform2i(WebGLUniformLocation location, int x, int y);

  void uniform2iv(WebGLUniformLocation location, Int32Array v);

  void uniform3f(WebGLUniformLocation location, num x, num y, num z);

  void uniform3fv(WebGLUniformLocation location, Float32Array v);

  void uniform3i(WebGLUniformLocation location, int x, int y, int z);

  void uniform3iv(WebGLUniformLocation location, Int32Array v);

  void uniform4f(WebGLUniformLocation location, num x, num y, num z, num w);

  void uniform4fv(WebGLUniformLocation location, Float32Array v);

  void uniform4i(WebGLUniformLocation location, int x, int y, int z, int w);

  void uniform4iv(WebGLUniformLocation location, Int32Array v);

  void uniformMatrix2fv(WebGLUniformLocation location, bool transpose, Float32Array array);

  void uniformMatrix3fv(WebGLUniformLocation location, bool transpose, Float32Array array);

  void uniformMatrix4fv(WebGLUniformLocation location, bool transpose, Float32Array array);

  void useProgram(WebGLProgram program);

  void validateProgram(WebGLProgram program);

  void vertexAttrib1f(int indx, num x);

  void vertexAttrib1fv(int indx, Float32Array values);

  void vertexAttrib2f(int indx, num x, num y);

  void vertexAttrib2fv(int indx, Float32Array values);

  void vertexAttrib3f(int indx, num x, num y, num z);

  void vertexAttrib3fv(int indx, Float32Array values);

  void vertexAttrib4f(int indx, num x, num y, num z, num w);

  void vertexAttrib4fv(int indx, Float32Array values);

  void vertexAttribPointer(int indx, int size, int type, bool normalized, int stride, int offset);

  void viewport(int x, int y, int width, int height);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLShader {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLTexture {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLUniformLocation {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebGLVertexArrayObjectOES {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitAnimation {

  static final int DIRECTION_ALTERNATE = 1;

  static final int DIRECTION_NORMAL = 0;

  static final int FILL_BACKWARDS = 1;

  static final int FILL_BOTH = 3;

  static final int FILL_FORWARDS = 2;

  static final int FILL_NONE = 0;

  num get delay();

  int get direction();

  num get duration();

  num get elapsedTime();

  void set elapsedTime(num value);

  bool get ended();

  int get fillMode();

  int get iterationCount();

  String get name();

  bool get paused();

  void pause();

  void play();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitAnimationEvent extends Event {

  String get animationName();

  num get elapsedTime();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitAnimationList {

  int get length();

  WebKitAnimation item(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitBlobBuilder {

  void append(var arrayBuffer_OR_blob_OR_value, [String endings]);

  Blob getBlob([String contentType]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitCSSFilterValue extends CSSValueList {

  static final int CSS_FILTER_BLUR = 10;

  static final int CSS_FILTER_BRIGHTNESS = 8;

  static final int CSS_FILTER_CONTRAST = 9;

  static final int CSS_FILTER_DROP_SHADOW = 11;

  static final int CSS_FILTER_GRAYSCALE = 2;

  static final int CSS_FILTER_HUE_ROTATE = 5;

  static final int CSS_FILTER_INVERT = 6;

  static final int CSS_FILTER_OPACITY = 7;

  static final int CSS_FILTER_REFERENCE = 1;

  static final int CSS_FILTER_SATURATE = 4;

  static final int CSS_FILTER_SEPIA = 3;

  int get operationType();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitCSSKeyframeRule extends CSSRule {

  String get keyText();

  void set keyText(String value);

  CSSStyleDeclaration get style();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitCSSKeyframesRule extends CSSRule {

  CSSRuleList get cssRules();

  String get name();

  void set name(String value);

  void deleteRule(String key);

  WebKitCSSKeyframeRule findRule(String key);

  void insertRule(String rule);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitCSSMatrix default _WebKitCSSMatrixFactoryProvider {

  WebKitCSSMatrix([String spec]);

  num get a();

  void set a(num value);

  num get b();

  void set b(num value);

  num get c();

  void set c(num value);

  num get d();

  void set d(num value);

  num get e();

  void set e(num value);

  num get f();

  void set f(num value);

  num get m11();

  void set m11(num value);

  num get m12();

  void set m12(num value);

  num get m13();

  void set m13(num value);

  num get m14();

  void set m14(num value);

  num get m21();

  void set m21(num value);

  num get m22();

  void set m22(num value);

  num get m23();

  void set m23(num value);

  num get m24();

  void set m24(num value);

  num get m31();

  void set m31(num value);

  num get m32();

  void set m32(num value);

  num get m33();

  void set m33(num value);

  num get m34();

  void set m34(num value);

  num get m41();

  void set m41(num value);

  num get m42();

  void set m42(num value);

  num get m43();

  void set m43(num value);

  num get m44();

  void set m44(num value);

  WebKitCSSMatrix inverse();

  WebKitCSSMatrix multiply(WebKitCSSMatrix secondMatrix);

  WebKitCSSMatrix rotate(num rotX, num rotY, num rotZ);

  WebKitCSSMatrix rotateAxisAngle(num x, num y, num z, num angle);

  WebKitCSSMatrix scale(num scaleX, num scaleY, num scaleZ);

  void setMatrixValue(String string);

  WebKitCSSMatrix skewX(num angle);

  WebKitCSSMatrix skewY(num angle);

  String toString();

  WebKitCSSMatrix translate(num x, num y, num z);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitCSSTransformValue extends CSSValueList {

  static final int CSS_MATRIX = 11;

  static final int CSS_MATRIX3D = 21;

  static final int CSS_PERSPECTIVE = 20;

  static final int CSS_ROTATE = 4;

  static final int CSS_ROTATE3D = 17;

  static final int CSS_ROTATEX = 14;

  static final int CSS_ROTATEY = 15;

  static final int CSS_ROTATEZ = 16;

  static final int CSS_SCALE = 5;

  static final int CSS_SCALE3D = 19;

  static final int CSS_SCALEX = 6;

  static final int CSS_SCALEY = 7;

  static final int CSS_SCALEZ = 18;

  static final int CSS_SKEW = 8;

  static final int CSS_SKEWX = 9;

  static final int CSS_SKEWY = 10;

  static final int CSS_TRANSLATE = 1;

  static final int CSS_TRANSLATE3D = 13;

  static final int CSS_TRANSLATEX = 2;

  static final int CSS_TRANSLATEY = 3;

  static final int CSS_TRANSLATEZ = 12;

  int get operationType();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitMutationObserver {

  void disconnect();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitNamedFlow {
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitPoint default _WebKitPointFactoryProvider {

  WebKitPoint(num x, num y);

  num get x();

  void set x(num value);

  num get y();

  void set y(num value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebKitTransitionEvent extends Event {

  num get elapsedTime();

  String get propertyName();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WebSocket extends EventTarget default _WebSocketFactoryProvider {

  WebSocket(String url);

  static final int CLOSED = 3;

  static final int CLOSING = 2;

  static final int CONNECTING = 0;

  static final int OPEN = 1;

  String get URL();

  String get binaryType();

  void set binaryType(String value);

  int get bufferedAmount();

  String get extensions();

  String get protocol();

  int get readyState();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void close([int code, String reason]);

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  bool send(String data);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WheelEvent extends UIEvent {

  bool get altKey();

  int get clientX();

  int get clientY();

  bool get ctrlKey();

  bool get metaKey();

  int get offsetX();

  int get offsetY();

  int get screenX();

  int get screenY();

  bool get shiftKey();

  bool get webkitDirectionInvertedFromDevice();

  int get wheelDelta();

  int get wheelDeltaX();

  int get wheelDeltaY();

  int get x();

  int get y();

  void initWebKitWheelEvent(int wheelDeltaX, int wheelDeltaY, DOMWindow view, int screenX, int screenY, int clientX, int clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface Worker extends AbstractWorker {

  void postMessage(String message, [List messagePorts]);

  void terminate();

  void webkitPostMessage(String message, [List messagePorts]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WorkerGlobalScope {

  WorkerLocation get location();

  void set location(WorkerLocation value);

  WorkerNavigator get navigator();

  void set navigator(WorkerNavigator value);

  EventListener get onerror();

  void set onerror(EventListener value);

  WorkerContext get self();

  void set self(WorkerContext value);

  IDBFactory get webkitIndexedDB();

  NotificationCenter get webkitNotifications();

  DOMURL get webkitURL();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  void clearInterval(int handle);

  void clearTimeout(int handle);

  void close();

  bool dispatchEvent(Event evt);

  void importScripts();

  Database openDatabase(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback]);

  DatabaseSync openDatabaseSync(String name, String version, String displayName, int estimatedSize, [DatabaseCallback creationCallback]);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  int setInterval(TimeoutHandler handler, int timeout);

  int setTimeout(TimeoutHandler handler, int timeout);

  void webkitRequestFileSystem(int type, int size, [FileSystemCallback successCallback, ErrorCallback errorCallback]);

  DOMFileSystemSync webkitRequestFileSystemSync(int type, int size);

  EntrySync webkitResolveLocalFileSystemSyncURL(String url);

  void webkitResolveLocalFileSystemURL(String url, [EntryCallback successCallback, ErrorCallback errorCallback]);
}

interface WorkerContext extends WorkerGlobalScope {

  static final int PERSISTENT = 1;

  static final int TEMPORARY = 0;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WorkerLocation {

  String get hash();

  String get host();

  String get hostname();

  String get href();

  String get pathname();

  String get port();

  String get protocol();

  String get search();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface WorkerNavigator {

  String get appName();

  String get appVersion();

  bool get onLine();

  String get platform();

  String get userAgent();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XMLHttpRequest extends EventTarget default _XMLHttpRequestFactoryProvider {

  XMLHttpRequest();


  static final int DONE = 4;

  static final int HEADERS_RECEIVED = 2;

  static final int LOADING = 3;

  static final int OPENED = 1;

  static final int UNSENT = 0;

  bool get asBlob();

  void set asBlob(bool value);

  int get readyState();

  Blob get responseBlob();

  String get responseText();

  String get responseType();

  void set responseType(String value);

  Document get responseXML();

  int get status();

  String get statusText();

  XMLHttpRequestUpload get upload();

  bool get withCredentials();

  void set withCredentials(bool value);

  void abort();

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  String getAllResponseHeaders();

  String getResponseHeader(String header);

  void open(String method, String url, [bool async, String user, String password]);

  void overrideMimeType(String override);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);

  void send([var data]);

  void setRequestHeader(String header, String value);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XMLHttpRequestException {

  static final int ABORT_ERR = 102;

  static final int NETWORK_ERR = 101;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XMLHttpRequestProgressEvent extends ProgressEvent {

  int get position();

  int get totalSize();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XMLHttpRequestUpload extends EventTarget {

  void addEventListener(String type, EventListener listener, [bool useCapture]);

  bool dispatchEvent(Event evt);

  void removeEventListener(String type, EventListener listener, [bool useCapture]);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XMLSerializer {

  String serializeToString(Node node);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XPathEvaluator {

  XPathExpression createExpression(String expression, XPathNSResolver resolver);

  XPathNSResolver createNSResolver(Node nodeResolver);

  XPathResult evaluate(String expression, Node contextNode, XPathNSResolver resolver, int type, XPathResult inResult);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XPathException {

  static final int INVALID_EXPRESSION_ERR = 51;

  static final int TYPE_ERR = 52;

  int get code();

  String get message();

  String get name();

  String toString();
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XPathExpression {

  XPathResult evaluate(Node contextNode, int type, XPathResult inResult);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XPathNSResolver {

  String lookupNamespaceURI(String prefix);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XPathResult {

  static final int ANY_TYPE = 0;

  static final int ANY_UNORDERED_NODE_TYPE = 8;

  static final int BOOLEAN_TYPE = 3;

  static final int FIRST_ORDERED_NODE_TYPE = 9;

  static final int NUMBER_TYPE = 1;

  static final int ORDERED_NODE_ITERATOR_TYPE = 5;

  static final int ORDERED_NODE_SNAPSHOT_TYPE = 7;

  static final int STRING_TYPE = 2;

  static final int UNORDERED_NODE_ITERATOR_TYPE = 4;

  static final int UNORDERED_NODE_SNAPSHOT_TYPE = 6;

  bool get booleanValue();

  bool get invalidIteratorState();

  num get numberValue();

  int get resultType();

  Node get singleNodeValue();

  int get snapshotLength();

  String get stringValue();

  Node iterateNext();

  Node snapshotItem(int index);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

interface XSLTProcessor {

  void clearParameters();

  String getParameter(String namespaceURI, String localName);

  void importStylesheet(Node stylesheet);

  void removeParameter(String namespaceURI, String localName);

  void reset();

  void setParameter(String namespaceURI, String localName, String value);

  Document transformToDocument(Node source);

  DocumentFragment transformToFragment(Node source, Document docVal);
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

typedef void EventListener(Event event);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Defines the standard key locations returned by
 * KeyboardEvent.getKeyLocation.
 */
interface KeyLocation {

  /**
   * The event key is not distinguished as the left or right version
   * of the key, and did not originate from the numeric keypad (or did not
   * originate with a virtual key corresponding to the numeric keypad).
   */
  static final int STANDARD = 0;

  /**
   * The event key is in the left key location.
   */
  static final int LEFT = 1;

  /**
   * The event key is in the right key location.
   */
  static final int RIGHT = 2;

  /**
   * The event key originated on the numeric keypad or with a virtual key
   * corresponding to the numeric keypad.
   */
  static final int NUMPAD = 3;

  /**
   * The event key originated on a mobile device, either on a physical
   * keypad or a virtual keyboard.
   */
  static final int MOBILE = 4;

  /**
   * The event key originated on a game controller or a joystick on a mobile
   * device.
   */
  static final int JOYSTICK = 5;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Defines the standard keyboard identifier names for keys that are returned
 * by KeyEvent.getKeyboardIdentifier when the key does not have a direct
 * unicode mapping.
 */
interface KeyName {

  /** The Accept (Commit, OK) key */
  static final String ACCEPT = "Accept";

  /** The Add key */
  static final String ADD = "Add";

  /** The Again key */
  static final String AGAIN = "Again";

  /** The All Candidates key */
  static final String ALL_CANDIDATES = "AllCandidates";

  /** The Alphanumeric key */
  static final String ALPHANUMERIC = "Alphanumeric";

  /** The Alt (Menu) key */
  static final String ALT = "Alt";

  /** The Alt-Graph key */
  static final String ALT_GRAPH = "AltGraph";

  /** The Application key */
  static final String APPS = "Apps";

  /** The ATTN key */
  static final String ATTN = "Attn";

  /** The Browser Back key */
  static final String BROWSER_BACK = "BrowserBack";

  /** The Browser Favorites key */
  static final String BROWSER_FAVORTIES = "BrowserFavorites";

  /** The Browser Forward key */
  static final String BROWSER_FORWARD = "BrowserForward";

  /** The Browser Home key */
  static final String BROWSER_NAME = "BrowserHome";

  /** The Browser Refresh key */
  static final String BROWSER_REFRESH = "BrowserRefresh";

  /** The Browser Search key */
  static final String BROWSER_SEARCH = "BrowserSearch";

  /** The Browser Stop key */
  static final String BROWSER_STOP = "BrowserStop";

  /** The Camera key */
  static final String CAMERA = "Camera";

  /** The Caps Lock (Capital) key */
  static final String CAPS_LOCK = "CapsLock";

  /** The Clear key */
  static final String CLEAR = "Clear";

  /** The Code Input key */
  static final String CODE_INPUT = "CodeInput";

  /** The Compose key */
  static final String COMPOSE = "Compose";

  /** The Control (Ctrl) key */
  static final String CONTROL = "Control";

  /** The Crsel key */
  static final String CRSEL = "Crsel";

  /** The Convert key */
  static final String CONVERT = "Convert";

  /** The Copy key */
  static final String COPY = "Copy";

  /** The Cut key */
  static final String CUT = "Cut";

  /** The Decimal key */
  static final String DECIMAL = "Decimal";

  /** The Divide key */
  static final String DIVIDE = "Divide";

  /** The Down Arrow key */
  static final String DOWN = "Down";

  /** The diagonal Down-Left Arrow key */
  static final String DOWN_LEFT = "DownLeft";

  /** The diagonal Down-Right Arrow key */
  static final String DOWN_RIGHT = "DownRight";

  /** The Eject key */
  static final String EJECT = "Eject";

  /** The End key */
  static final String END = "End";

  /**
   * The Enter key. Note: This key value must also be used for the Return
   *  (Macintosh numpad) key
   */
  static final String ENTER = "Enter";

  /** The Erase EOF key */
  static final String ERASE_EOF= "EraseEof";

  /** The Execute key */
  static final String EXECUTE = "Execute";

  /** The Exsel key */
  static final String EXSEL = "Exsel";

  /** The Function switch key */
  static final String FN = "Fn";

  /** The F1 key */
  static final String F1 = "F1";

  /** The F2 key */
  static final String F2 = "F2";

  /** The F3 key */
  static final String F3 = "F3";

  /** The F4 key */
  static final String F4 = "F4";

  /** The F5 key */
  static final String F5 = "F5";

  /** The F6 key */
  static final String F6 = "F6";

  /** The F7 key */
  static final String F7 = "F7";

  /** The F8 key */
  static final String F8 = "F8";

  /** The F9 key */
  static final String F9 = "F9";

  /** The F10 key */
  static final String F10 = "F10";

  /** The F11 key */
  static final String F11 = "F11";

  /** The F12 key */
  static final String F12 = "F12";

  /** The F13 key */
  static final String F13 = "F13";

  /** The F14 key */
  static final String F14 = "F14";

  /** The F15 key */
  static final String F15 = "F15";

  /** The F16 key */
  static final String F16 = "F16";

  /** The F17 key */
  static final String F17 = "F17";

  /** The F18 key */
  static final String F18 = "F18";

  /** The F19 key */
  static final String F19 = "F19";

  /** The F20 key */
  static final String F20 = "F20";

  /** The F21 key */
  static final String F21 = "F21";

  /** The F22 key */
  static final String F22 = "F22";

  /** The F23 key */
  static final String F23 = "F23";

  /** The F24 key */
  static final String F24 = "F24";

  /** The Final Mode (Final) key used on some asian keyboards */
  static final String FINAL_MODE = "FinalMode";

  /** The Find key */
  static final String FIND = "Find";

  /** The Full-Width Characters key */
  static final String FULL_WIDTH = "FullWidth";

  /** The Half-Width Characters key */
  static final String HALF_WIDTH = "HalfWidth";

  /** The Hangul (Korean characters) Mode key */
  static final String HANGUL_MODE = "HangulMode";

  /** The Hanja (Korean characters) Mode key */
  static final String HANJA_MODE = "HanjaMode";

  /** The Help key */
  static final String HELP = "Help";

  /** The Hiragana (Japanese Kana characters) key */
  static final String HIRAGANA = "Hiragana";

  /** The Home key */
  static final String HOME = "Home";

  /** The Insert (Ins) key */
  static final String INSERT = "Insert";

  /** The Japanese-Hiragana key */
  static final String JAPANESE_HIRAGANA = "JapaneseHiragana";

  /** The Japanese-Katakana key */
  static final String JAPANESE_KATAKANA = "JapaneseKatakana";

  /** The Japanese-Romaji key */
  static final String JAPANESE_ROMAJI = "JapaneseRomaji";

  /** The Junja Mode key */
  static final String JUNJA_MODE = "JunjaMode";

  /** The Kana Mode (Kana Lock) key */
  static final String KANA_MODE = "KanaMode";

  /**
   * The Kanji (Japanese name for ideographic characters of Chinese origin)
   * Mode key
   */
  static final String KANJI_MODE = "KanjiMode";

  /** The Katakana (Japanese Kana characters) key */
  static final String KATAKANA = "Katakana";

  /** The Start Application One key */
  static final String LAUNCH_APPLICATION_1 = "LaunchApplication1";

  /** The Start Application Two key */
  static final String LAUNCH_APPLICATION_2 = "LaunchApplication2";

  /** The Start Mail key */
  static final String LAUNCH_MAIL = "LaunchMail";

  /** The Left Arrow key */
  static final String LEFT = "Left";

  /** The Menu key */
  static final String MENU = "Menu";

  /**
   * The Meta key. Note: This key value shall be also used for the Apple
   * Command key
   */
  static final String META = "Meta";

  /** The Media Next Track key */
  static final String MEDIA_NEXT_TRACK = "MediaNextTrack";

  /** The Media Play Pause key */
  static final String MEDIA_PAUSE_PLAY = "MediaPlayPause";

  /** The Media Previous Track key */
  static final String MEDIA_PREVIOUS_TRACK = "MediaPreviousTrack";

  /** The Media Stop key */
  static final String MEDIA_STOP = "MediaStop";

  /** The Mode Change key */
  static final String MODE_CHANGE = "ModeChange";

  /** The Next Candidate function key */
  static final String NEXT_CANDIDATE = "NextCandidate";

  /** The Nonconvert (Don't Convert) key */
  static final String NON_CONVERT = "Nonconvert";

  /** The Number Lock key */
  static final String NUM_LOCK = "NumLock";

  /** The Page Down (Next) key */
  static final String PAGE_DOWN = "PageDown";

  /** The Page Up key */
  static final String PAGE_UP = "PageUp";

  /** The Paste key */
  static final String PASTE = "Paste";

  /** The Pause key */
  static final String PAUSE = "Pause";

  /** The Play key */
  static final String PLAY = "Play";

  /**
   * The Power key. Note: Some devices may not expose this key to the
   * operating environment
   */
  static final String POWER = "Power";

  /** The Previous Candidate function key */
  static final String PREVIOUS_CANDIDATE = "PreviousCandidate";

  /** The Print Screen (PrintScrn, SnapShot) key */
  static final String PRINT_SCREEN = "PrintScreen";

  /** The Process key */
  static final String PROCESS = "Process";

  /** The Props key */
  static final String PROPS = "Props";

  /** The Right Arrow key */
  static final String RIGHT = "Right";

  /** The Roman Characters function key */
  static final String ROMAN_CHARACTERS = "RomanCharacters";

  /** The Scroll Lock key */
  static final String SCROLL = "Scroll";

  /** The Select key */
  static final String SELECT = "Select";

  /** The Select Media key */
  static final String SELECT_MEDIA = "SelectMedia";

  /** The Separator key */
  static final String SEPARATOR = "Separator";

  /** The Shift key */
  static final String SHIFT = "Shift";

  /** The Soft1 key */
  static final String SOFT_1 = "Soft1";

  /** The Soft2 key */
  static final String SOFT_2 = "Soft2";

  /** The Soft3 key */
  static final String SOFT_3 = "Soft3";

  /** The Soft4 key */
  static final String SOFT_4 = "Soft4";

  /** The Stop key */
  static final String STOP = "Stop";

  /** The Subtract key */
  static final String SUBTRACT = "Subtract";

  /** The Symbol Lock key */
  static final String SYMBOL_LOCK = "SymbolLock";

  /** The Up Arrow key */
  static final String UP = "Up";

  /** The diagonal Up-Left Arrow key */
  static final String UP_LEFT = "UpLeft";

  /** The diagonal Up-Right Arrow key */
  static final String UP_RIGHT = "UpRight";

  /** The Undo key */
  static final String UNDO = "Undo";

  /** The Volume Down key */
  static final String VOLUME_DOWN = "VolumeDown";

  /** The Volume Mute key */
  static final String VOLUMN_MUTE = "VolumeMute";

  /** The Volume Up key */
  static final String VOLUMN_UP = "VolumeUp";

  /** The Windows Logo key */
  static final String WIN = "Win";

  /** The Zoom key */
  static final String ZOOM = "Zoom";

  /**
   * The Backspace (Back) key. Note: This key value shall be also used for the
   * key labeled 'delete' MacOS keyboards when not modified by the 'Fn' key
   */
  static final String BACKSPACE = "Backspace";

  /** The Horizontal Tabulation (Tab) key */
  static final String TAB = "Tab";

  /** The Cancel key */
  static final String CANCEL = "Cancel";

  /** The Escape (Esc) key */
  static final String ESC = "Esc";

  /** The Space (Spacebar) key:   */
  static final String SPACEBAR = "Spacebar";

  /**
   * The Delete (Del) Key. Note: This key value shall be also used for the key
   * labeled 'delete' MacOS keyboards when modified by the 'Fn' key
   */
  static final String DEL = "Del";

  /** The Combining Grave Accent (Greek Varia, Dead Grave) key */
  static final String DEAD_GRAVE = "DeadGrave";

  /**
   * The Combining Acute Accent (Stress Mark, Greek Oxia, Tonos, Dead Eacute)
   * key
   */
  static final String DEAD_EACUTE = "DeadEacute";

  /** The Combining Circumflex Accent (Hat, Dead Circumflex) key */
  static final String DEAD_CIRCUMFLEX = "DeadCircumflex";

  /** The Combining Tilde (Dead Tilde) key */
  static final String DEAD_TILDE = "DeadTilde";

  /** The Combining Macron (Long, Dead Macron) key */
  static final String DEAD_MACRON = "DeadMacron";

  /** The Combining Breve (Short, Dead Breve) key */
  static final String DEAD_BREVE = "DeadBreve";

  /** The Combining Dot Above (Derivative, Dead Above Dot) key */
  static final String DEAD_ABOVE_DOT = "DeadAboveDot";

  /**
   * The Combining Diaeresis (Double Dot Abode, Umlaut, Greek Dialytika,
   * Double Derivative, Dead Diaeresis) key
   */
  static final String DEAD_UMLAUT = "DeadUmlaut";

  /** The Combining Ring Above (Dead Above Ring) key */
  static final String DEAD_ABOVE_RING = "DeadAboveRing";

  /** The Combining Double Acute Accent (Dead Doubleacute) key */
  static final String DEAD_DOUBLEACUTE = "DeadDoubleacute";

  /** The Combining Caron (Hacek, V Above, Dead Caron) key */
  static final String DEAD_CARON = "DeadCaron";

  /** The Combining Cedilla (Dead Cedilla) key */
  static final String DEAD_CEDILLA = "DeadCedilla";

  /** The Combining Ogonek (Nasal Hook, Dead Ogonek) key */
  static final String DEAD_OGONEK = "DeadOgonek";

  /**
   * The Combining Greek Ypogegrammeni (Greek Non-Spacing Iota Below, Iota
   * Subscript, Dead Iota) key
   */
  static final String DEAD_IOTA = "DeadIota";

  /**
   * The Combining Katakana-Hiragana Voiced Sound Mark (Dead Voiced Sound) key
   */
  static final String DEAD_VOICED_SOUND = "DeadVoicedSound";

  /**
   * The Combining Katakana-Hiragana Semi-Voiced Sound Mark (Dead Semivoiced
   * Sound) key
   */
  static final String DEC_SEMIVOICED_SOUND= "DeadSemivoicedSound";

  /**
   * Key value used when an implementation is unable to identify another key
   * value, due to either hardware, platform, or software constraints
   */
  static final String UNIDENTIFIED = "Unidentified";
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * Contains the set of standard values returned by HTMLDocument.getReadyState.
 */
interface ReadyState {
  /**
   * Indicates the document is still loading and parsing.
   */
  static final String LOADING = "loading";

  /**
   * Indicates the document is finished parsing but is still loading
   * subresources.
   */
  static final String INTERACTIVE = "interactive";

  /**
   * Indicates the document and all subresources have been loaded.
   */
  static final String COMPLETE = "complete";
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

typedef bool RequestAnimationFrameCallback(int time);
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

typedef void TimeoutHandler();
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/**
 * The [Collections] class implements static methods useful when
 * writing a class that implements [Collection] and the [iterator]
 * method.
 */
class _Collections {
  static void forEach(Iterable<Object> iterable, void f(Object o)) {
    for (final e in iterable) {
      f(e);
    }
  }

  static List map(Iterable<Object> source,
                  List<Object> destination,
                  f(o)) {
    for (final e in source) {
      destination.add(f(e));
    }
    return destination;
  }

  static bool some(Iterable<Object> iterable, bool f(Object o)) {
    for (final e in iterable) {
      if (f(e)) return true;
    }
    return false;
  }

  static bool every(Iterable<Object> iterable, bool f(Object o)) {
    for (final e in iterable) {
      if (!f(e)) return false;
    }
    return true;
  }

  static List filter(Iterable<Object> source,
                     List<Object> destination,
                     bool f(o)) {
    for (final e in source) {
      if (f(e)) destination.add(e);
    }
    return destination;
  }

  static bool isEmpty(Iterable<Object> iterable) {
    return !iterable.iterator().hasNext();
  }
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


// These factory methods could all live in one factory provider class but dartc
// has a bug (5399939) preventing that.

class _AudioContextFactoryProvider {

  factory AudioContext() native '''return new AudioContext();''';
}

class _FileReaderFactoryProvider {

  factory FileReader() native '''return new FileReader();''';
}

class _TypedArrayFactoryProvider {

  factory Float32Array(int length) => _F32(length);
  factory Float32Array.fromList(List<num> list) => _F32(ensureNative(list));
  factory Float32Array.fromBuffer(ArrayBuffer buffer) => _F32(buffer);

  factory Float64Array(int length) => _F64(length);
  factory Float64Array.fromList(List<num> list) => _F64(ensureNative(list));
  factory Float64Array.fromBuffer(ArrayBuffer buffer) => _F64(buffer);

  factory Int8Array(int length) => _I8(length);
  factory Int8Array.fromList(List<num> list) => _I8(ensureNative(list));
  factory Int8Array.fromBuffer(ArrayBuffer buffer) => _I8(buffer);

  factory Int16Array(int length) => _I16(length);
  factory Int16Array.fromList(List<num> list) => _I16(ensureNative(list));
  factory Int16Array.fromBuffer(ArrayBuffer buffer) => _I16(buffer);

  factory Int32Array(int length) => _I32(length);
  factory Int32Array.fromList(List<num> list) => _I32(ensureNative(list));
  factory Int32Array.fromBuffer(ArrayBuffer buffer) => _I32(buffer);

  factory Uint8Array(int length) => _U8(length);
  factory Uint8Array.fromList(List<num> list) => _U8(ensureNative(list));
  factory Uint8Array.fromBuffer(ArrayBuffer buffer) => _U8(buffer);

  factory Uint16Array(int length) => _U16(length);
  factory Uint16Array.fromList(List<num> list) => _U16(ensureNative(list));
  factory Uint16Array.fromBuffer(ArrayBuffer buffer) => _U16(buffer);

  factory Uint32Array(int length) => _U32(length);
  factory Uint32Array.fromList(List<num> list) => _U32(ensureNative(list));
  factory Uint32Array.fromBuffer(ArrayBuffer buffer) => _U32(buffer);


  static Float32Array _F32(arg) native 'return new Float32Array(arg);';
  static Float64Array _F64(arg) native 'return new Float64Array(arg);';
  static Int8Array _I8(arg) native 'return new Int8Array(arg);';
  static Int16Array _I16(arg) native 'return new Int16Array(arg);';
  static Int32Array _I32(arg) native 'return new Int32Array(arg);';
  static Uint8Array _U8(arg) native 'return new Uint8Array(arg);';
  static Uint16Array _U16(arg) native 'return new Uint16Array(arg);';
  static Uint32Array _U32(arg) native 'return new Uint32Array(arg);';

  static ensureNative(List list) => list;  // TODO: make sure.
}

class _WebKitCSSMatrixFactoryProvider {

  factory WebKitCSSMatrix([String spec = '']) native
      '''return new WebKitCSSMatrix(spec);''';
}

class _WebKitPointFactoryProvider {

  factory WebKitPoint(num x, num y) native '''return new WebKitPoint(x, y);''';
}

class _WebSocketFactoryProvider {

  factory WebSocket(String url) native '''return new WebSocket(url);''';
}

class _XMLHttpRequestFactoryProvider {

  factory XMLHttpRequest() native '''return new XMLHttpRequest();''';
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Iterator for arrays with fixed size.
class _FixedSizeListIterator<T> extends _VariableSizeListIterator<T> {
  _FixedSizeListIterator(List<T> array)
      : super(array),
        _length = array.length;

  bool hasNext() => _length > _pos;

  final int _length;  // Cache array length for faster access.
}

// Iterator for arrays with variable size.
class _VariableSizeListIterator<T> implements Iterator<T> {
  _VariableSizeListIterator(List<T> array)
      : _array = array,
        _pos = 0;

  bool hasNext() => _array.length > _pos;

  T next() {
    if (!hasNext()) {
      throw const NoMoreElementsException();
    }
    return _array[_pos++];
  }

  final List<T> _array;
  int _pos;
}
// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class _Lists {

  /**
   * Returns the index in the array [a] of the given [element], starting
   * the search at index [startIndex] to [endIndex] (exclusive).
   * Returns -1 if [element] is not found.
   */
  static int indexOf(List a,
                     Object element,
                     int startIndex,
                     int endIndex) {
    if (startIndex >= a.length) {
      return -1;
    }
    if (startIndex < 0) {
      startIndex = 0;
    }
    for (int i = startIndex; i < endIndex; i++) {
      if (a[i] == element) {
        return i;
      }
    }
    return -1;
  }

  /**
   * Returns the last index in the array [a] of the given [element], starting
   * the search at index [startIndex] to 0.
   * Returns -1 if [element] is not found.
   */
  static int lastIndexOf(List a, Object element, int startIndex) {
    if (startIndex < 0) {
      return -1;
    }
    if (startIndex >= a.length) {
      startIndex = a.length - 1;
    }
    for (int i = startIndex; i >= 0; i--) {
      if (a[i] == element) {
        return i;
      }
    }
    return -1;
  }
}
