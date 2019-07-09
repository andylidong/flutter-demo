import 'package:flutter/material.dart';
import 'package:zhihu/common/global_config.dart';
import 'page/index/index.dart';
//import 'package:event_bus/event_bus.dart';


void main() => runApp(new FlutterDemo());

class FlutterDemo extends StatelessWidget {
  FlutterDemo() {
    this.init();
  }

  // 初始化信息（主题）
  init() {
    GlobalConfig.settingTheme();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "知乎",
      home: new Index(),
    );
  }
}
