import 'package:flutter/material.dart';

class _ConstColors {
  Color blue = const Color.fromRGBO(26, 114, 221, 1);
  Color black1 = const Color.fromARGB(173, 6, 4, 8);
}

class ConstApp {
  static String appName = "SoftPOS";

  static _ConstColors colors() {
    return _ConstColors();
  }
}
