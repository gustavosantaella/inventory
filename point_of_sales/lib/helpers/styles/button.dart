import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';

buttonStyle({double? borderRadius = 18.0, Color? color, Color? borderColor}) {
  return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: borderColor ?? ConstApp.colors().blue))),
      backgroundColor:
          MaterialStatePropertyAll(color ?? ConstApp.colors().blue));
}