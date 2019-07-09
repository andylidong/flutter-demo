import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = true;
  static ThemeData themeData;
  static Color fontColor;
  static Color cardBackgroundColor;
  static Color searchBackgroundColor;

  GlobalConfig() {
    settingTheme();
  }

  static settingTheme() {
    if (GlobalConfig.dark == true) {
      GlobalConfig.themeData = new ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: new Color(0xFFEBEBEB),
      );
      GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
      GlobalConfig.cardBackgroundColor = Colors.white;
      GlobalConfig.fontColor = Colors.black54;
      GlobalConfig.dark = false;
    } else {
      GlobalConfig.themeData = new ThemeData.dark();
      GlobalConfig.searchBackgroundColor = Colors.white10;
      GlobalConfig.cardBackgroundColor = new Color(0xFF222222);
      GlobalConfig.fontColor = Colors.white30;
      GlobalConfig.dark = true;
    }
  }
}
