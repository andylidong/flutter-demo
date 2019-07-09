import 'package:flutter/material.dart';
import 'package:zhihu/widget/search_page.dart';

class MarketPage extends StatefulWidget {
  @override
  _MarketPageState createState() => new _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return new SearchPage("市场", null);
  }
}
