import 'package:flutter/material.dart';

class _ConstColors {
  Color blue = const Color.fromRGBO(26, 114, 221, 1);
  Color black1 = const Color.fromARGB(173, 6, 4, 8);
}

class _Lang {
  String defaultLang = "es";
  List<String> supported = ["es", "es"];
}

class ConstApp {
  static String appName = "SoftPOS";
  static double padding = 4;
  static _Lang lang = _Lang();

  static _ConstColors colors() {
    return _ConstColors();
  }
}
