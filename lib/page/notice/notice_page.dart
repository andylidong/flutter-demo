import 'package:flutter/material.dart';
import 'package:zhihu/widget/search_page.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => new _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return new SearchPage("通知", null);
  }
}
