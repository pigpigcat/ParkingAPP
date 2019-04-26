import 'package:flutter/material.dart';

/// 全局配置类
class GlobalConfig {
  static bool dark = true;
  static ThemeData themeData = new ThemeData.dark();
  static String urlPrefix = "http://localhost:8080/parking/";
  static Color searchBackgroundColor = Colors.white10;
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = Colors.white30;
}
