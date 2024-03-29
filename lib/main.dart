import 'package:flutter/material.dart';
import 'package:zhihu/common/config/global_config.dart';
import 'page/index/index.dart';

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
