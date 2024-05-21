import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';

class SoftPOS extends StatefulWidget {
  final Widget child;
  const SoftPOS({super.key, required this.child});

  @override
  State<StatefulWidget> createState() {
    return _SoftPOS();
  }
}

class _SoftPOS extends State<SoftPOS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(ConstApp.padding),
      child: widget.child,
    ));
  }
}
