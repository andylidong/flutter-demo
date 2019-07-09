import 'package:flutter/material.dart';
import 'package:zhihu/common/config/global_config.dart';
import 'package:zhihu/common/event/event.dart';
import 'package:zhihu/common/event/theme_event.dart';
import 'package:zhihu/page/my/widget/idea_card_page.dart';
import 'package:zhihu/page/my/widget/info_card_page.dart';
import 'package:zhihu/page/my/widget/service_card_page.dart';
import 'package:zhihu/page/my/widget/setting_card_page.dart';
import 'package:zhihu/page/my/widget/video_card_page.dart';
import 'package:zhihu/widget/search_page.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {

  _MyPageState() {
    eventBus.on<ThemeEvent>().listen((event) {
      setState(() {
        GlobalConfig.settingTheme();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new SearchPage("", body());
  }

  Widget body() {
    return new SingleChildScrollView(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new InfoCardPage(),
            new ServiceCardPage(),
            new SettingCardPage(),
            new VideoCardPage(),
            new IdeaCardPage()
          ],
        ),
      ),
    );
  }
}
