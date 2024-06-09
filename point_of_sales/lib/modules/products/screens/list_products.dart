import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/height.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/button_text.dart';
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
        backgroundColor: Colors.white,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.storefront),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.inventory),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.book),
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
          lang("Products"),
          style: primaryColorTitle(),
        ),
      ),
      body: SoftPOS(
          padding: 0,
          child: Column(
            children: [
              const ProductSerchableRowWidget(),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(ConstApp.padding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                                child: Wrap(
                              spacing: 20,
                              runSpacing: 10,
                              children: [
                                ProductCardWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ProductCardWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ProductCardWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ProductCardWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ProductCardWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                            )),
                          ),
                          buttonText(
                              widget: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: ConstApp.colors().blue,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.shop,
                                      size: 20,
                                      color: Colors.white,
                                      weight: 20,
                                    ),
                                    const Spacer(),
                                    Text(
                                      lang("New Order"),
                                      style: primaryColorTitle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              onPressed: () {
                                print("pressed");
                              })
                        ],
                      )))
            ],
          )),
    );
  }
}
