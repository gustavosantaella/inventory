import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';

class ProductSerchableRowWidget extends StatefulWidget {
  const ProductSerchableRowWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductSearchableRowState();
  }
}

class _ProductSearchableRowState extends State<ProductSerchableRowWidget> {
  @override
  Container build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: ConstApp.colors().grey1),
              bottom: BorderSide(color: ConstApp.colors().grey1))),
      width: MediaQuery.of(context).size.width,
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '${lang("Search some product")}...'),
            ),
          ),
          Container(
            color: ConstApp.colors().grey1,
            padding: const EdgeInsets.all(1),
          ),
          const Spacer(),
          const Icon(Icons.search),
          const Spacer(),
          Container(
            color: ConstApp.colors().grey1,
            padding: const EdgeInsets.all(1),
          ),
          const Spacer(),
          const Icon(Icons.add),
          const Spacer(),
          Container(
            color: ConstApp.colors().grey1,
            padding: const EdgeInsets.all(1),
          ),
          const Spacer(),
          const Icon(Icons.tab),
          const Spacer(),
        ],
      ),
    );
  }
}
