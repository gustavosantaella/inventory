import 'package:flutter/material.dart';

class _ConstColors {
  Color blue = const Color.fromRGBO(26, 114, 221, 1);
  Color blue2 = const Color.fromARGB(63, 10, 130, 221);
  Color black1 = const Color.fromARGB(255, 6, 4, 8);
  Color grey1 = const Color.fromARGB(24, 0, 0, 5);
}

class _Lang {
  String defaultLang = "es";
  List<String> supported = ["es", "es"];
}

class ConstApp {
  static String appName = "SoftPOS";
  static double padding = 10;
  static _Lang lang = _Lang();

  static _ConstColors colors() {
    return _ConstColors();
  }
}
