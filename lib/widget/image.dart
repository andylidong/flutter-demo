import 'package:flutter/material.dart';
import 'package:zhihu/common/global_config.dart';

// ignore: must_be_immutable
class Image extends StatefulWidget {
  var icon;
  var text;
  var onPress;

  Image(this.icon, this.text, this.onPress);

  @override
  _ImageState createState() => new _ImageState();
}

class _ImageState extends State<Image> {
  @override
  Widget build(BuildContext context) {
    return settingCard();
  }

  Widget settingCard() {
    return new Container(
      width: MediaQuery.of(context).size.width / 4,
      child: new FlatButton(
          onPressed: () => widget.onPress(),
          child: new Container(
            child: new Column(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(bottom: 6.0, top: 6.0),
                  child: new CircleAvatar(
                    radius: 20.0,
                    child: new Icon(widget.icon, color: Colors.white),
                    backgroundColor: new Color(0xFFB88800),
                  ),
                ),
                new Container(
                  child: new Text(widget.text,
                      style: new TextStyle(
                          color: GlobalConfig.fontColor, fontSize: 14.0)),
                )
              ],
            ),
          )),
    );
  }
}
