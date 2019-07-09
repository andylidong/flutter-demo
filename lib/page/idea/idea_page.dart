import 'package:flutter/material.dart';
import 'package:zhihu/widget/search_page.dart';

class IdeaPage extends StatefulWidget {
  @override
  _IdeaPageState createState() => new _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return new SearchPage("想法", null);
  }
}
