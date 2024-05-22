import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';

class ProductCardWidget extends StatefulWidget {
  final Widget? child;
  const ProductCardWidget({super.key, this.child});

  @override
  State<StatefulWidget> createState() {
    return _ProductCardState();
  }
}

class _ProductCardState extends State<ProductCardWidget> {
  @override
  Container build(BuildContext context) {
    return Container(
        width: 152,
        height: 182,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(1, 1), blurRadius: 10),
            ]),
        child: widget.child);
  }
}
