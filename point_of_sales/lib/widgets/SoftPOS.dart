import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';

class SoftPOS extends StatefulWidget {
  final Widget child;
  final double? padding;
  const SoftPOS({super.key, required this.child, this.padding});

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
      padding: EdgeInsets.all(widget.padding ?? ConstApp.padding),
      child: widget.child,
    ));
  }
}
