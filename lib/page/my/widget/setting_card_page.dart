import 'package:flutter/material.dart';
import 'package:zhihu/common/global_config.dart';


// ignore: must_be_immutable
class SettingCardPage extends StatefulWidget {
  var settingTheme;

  SettingCardPage(this.settingTheme);

  @override
  _SettingCardState createState() => new _SettingCardState();
}

class _SettingCardState extends State<SettingCardPage> {
  @override
  Widget build(BuildContext context) {
    return settingCard();
  }

  Widget settingCard() {
    return new Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: () {},
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0, top: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(Icons.invert_colors,
                              color: Colors.white),
                          backgroundColor: new Color(0xFFB88800),
                        ),
                      ),
                      new Container(
                        child: new Text("社区建设",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )),
          ),
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: () {},
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0, top: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child:
                              new Icon(Icons.golf_course, color: Colors.white),
                          backgroundColor: new Color(0xFF63616D),
                        ),
                      ),
                      new Container(
                        child: new Text("反馈",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )),
          ),
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: () => widget.settingTheme(),
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0, top: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(
                              GlobalConfig.dark == true
                                  ? Icons.wb_sunny
                                  : Icons.brightness_2,
                              color: Colors.white),
                          backgroundColor: new Color(0xFFB86A0D),
                        ),
                      ),
                      new Container(
                        child: new Text(
                            GlobalConfig.dark == true ? "日间模式" : "夜间模式",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )),
          ),
          new Container(
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton(
                onPressed: () {},
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0, top: 6.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(Icons.perm_data_setting,
                              color: Colors.white),
                          backgroundColor: new Color(0xFF636269),
                        ),
                      ),
                      new Container(
                        child: new Text("设置",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor, fontSize: 14.0)),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
