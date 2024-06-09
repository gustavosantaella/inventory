import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:point_of_sales/helpers/styles/button.dart';

TextStyle buttonTextStyle() {
  return const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16);
}

SizedBox buttonText(
    {String? text,
    Widget? widget,
    required VoidCallback onPressed,
    double? width}) {
  return SizedBox(
    height: 57,
    width: width,
    child: TextButton(
        style: buttonStyle(),
        onPressed: onPressed,
        child: widget ??
            Text(
              text ?? "",
              style: buttonTextStyle(),
            )),
  );
}
