import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
          padding: 0,
          child: Column(
            children: [
              Container(
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
                      child: TextField(),
                    ),
                    Container(
                      color: ConstApp.colors().grey1,
                      padding: const EdgeInsets.all(1),
                    ),
                    Spacer(),
                    Icon(Icons.search),
                    Spacer(),
                    Container(
                      color: ConstApp.colors().grey1,
                      padding: const EdgeInsets.all(1),
                    ),
                    Spacer(),
                    Icon(Icons.add),
                    Spacer(),
                    Container(
                      color: ConstApp.colors().grey1,
                      padding: const EdgeInsets.all(1),
                    ),
                    Spacer(),
                    Icon(Icons.tab),
                    Spacer(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
