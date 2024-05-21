import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/text.dart';
import 'package:point_of_sales/widgets/SoftPOS.dart';
import 'package:point_of_sales/widgets/app_bar_back_button.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListProductState();
  }
}

class _ListProductState extends State<ListProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: ConstApp.colors().blue),
        centerTitle: true,
        title: Text(
          lang("Home"),
          style: primaryColorTitle(),
        ),
      ),
      body: SoftPOS(
        child: Container(),
      ),
    );
  }
}
