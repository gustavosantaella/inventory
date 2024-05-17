import 'package:flutter/material.dart';

class POSAd extends StatefulWidget {
  final Widget child;
  const POSAd({super.key, required this.child});

  @override
  State<StatefulWidget> createState() {
    return _POSAdd();
  }
}

class _POSAdd extends State<POSAd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: widget.child);
  }
}
