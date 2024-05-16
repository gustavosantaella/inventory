import 'package:flutter/material.dart';
import 'package:point_of_sales/helpers/styles/button.dart';

Widget backButton(VoidCallback onpressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: TextButton(
      onPressed: onpressed,
      style: buttonStyle(borderRadius: 15),
      child: const Icon(Icons.arrow_back, color: Colors.white),
    ),
  );
}
