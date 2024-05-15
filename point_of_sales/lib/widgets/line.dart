import 'package:flutter/material.dart';

line(
    {double? padding,
    double? width,
    double? height,
    double? borderRadius,
    Color? color}) {
  return Container(
    width: width ?? 20,
    height: height ?? 6,
    padding: EdgeInsets.all(padding ?? 10),
    decoration: BoxDecoration(
        color: color ?? Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 100))),
  );
}
