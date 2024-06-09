import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';

TextStyle primaryColorTitle({Color? color, double? fontSize}) {
  return TextStyle(
    color: color ?? ConstApp.colors().blue,
    fontSize: fontSize,
    fontWeight: FontWeight.w500,
  );
}
