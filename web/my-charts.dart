// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'What does a stupid pig do every day';

  var myData = JsObject.jsify([
    {'year': 'eat', 'population': 3},
    {'year': 'study', 'population': 5},
    {'year': 'sleep', 'population': 7},
    {'year': 'play', 'population': 9},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
