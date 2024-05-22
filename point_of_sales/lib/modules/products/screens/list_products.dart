import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/text.dart';
import 'package:point_of_sales/modules/products/widgets/card_product_widget.dart';
import 'package:point_of_sales/modules/products/widgets/product_searchable_row.dart';
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
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
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
              const ProductSerchableRowWidget(),
              Padding(
                padding: EdgeInsets.all(ConstApp.padding),
                child: Wrap(
                  spacing: 50,
                  runSpacing: 30,
                  children: [
                    ProductCardWidget(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 44,
                            color: ConstApp.colors().blue,
                          ),
                          Text(
                            lang("Add"),
                            style: TextStyle(
                                color: ConstApp.colors().blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    ProductCardWidget(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                              "https://www.shutterstock.com/image-photo/homemade-hamburger-fresh-vegetables-260nw-337714676.jpg"),
                          Text(
                            "BIG BURGER",
                            style: TextStyle(
                                color: ConstApp.colors().blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          const Spacer(),
                          Text(
                            "\$25.867",
                            style: TextStyle(
                                color: ConstApp.colors().blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
