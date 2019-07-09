import 'package:flutter/material.dart';
import 'package:zhihu/common/global_config.dart';

// ignore: must_be_immutable
class SearchPage extends StatefulWidget {
  var searchTitle = "搜索知乎内容";

  var searchBody;

  SearchPage(String title, Widget body) {
    searchTitle = title != "" ? title : "搜索知乎内容";
    searchBody = body != null ? body : null;
  }

  @override
  _SearchPage createState() => new _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: search(),
          ),
          body: widget.searchBody,
        ),
        theme: GlobalConfig.themeData);
  }

  Widget search() {
    return new Container(
        child: new FlatButton(
            onPressed: () {},
            child: new Row(
              children: <Widget>[
                new Container(
                  child: new Icon(
                    Icons.search,
                    size: 18.0,
                  ),
                  margin: const EdgeInsets.only(right: 26.0),
                ),
                new Expanded(
                    child: new Container(
                  child: new Text(widget.searchTitle),
                )),
                new Container(
                  child: new FlatButton(
                    onPressed: () {},
                    child: new Icon(Icons.settings_overscan, size: 18.0),
                  ),
                  width: 40.0,
                ),
              ],
            )),
        decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
            color: GlobalConfig.searchBackgroundColor));
  }
}
