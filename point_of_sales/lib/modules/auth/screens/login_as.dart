import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/height.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/button.dart';
import 'package:point_of_sales/helpers/styles/button_text.dart';
import 'package:point_of_sales/helpers/styles/text.dart';
import 'package:point_of_sales/widgets/app_bar_back_button.dart';
import 'package:point_of_sales/widgets/input.dart';

class LoginAs extends StatefulWidget {
  const LoginAs({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginAsState();
  }
}

class _LoginAsState extends State<LoginAs> {
  @override
  initState() {
    super.initState();
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: backButton(() {
            Navigator.pop(context);
          }),
          title: Text(
            lang("Log in as ${args['type']}"),
            style: primaryColorTitle(),
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.all(ConstApp.padding),
                    child: Column(children: [
                      height(62),
                      POSInput(
                        errorText: null,
                        label: lang("Employee code"),
                        controller: usernameController,
                      ),
                      height(49),
                      POSInput(
                        errorText: null,
                        label: lang("Password"),
                        controller: passwordController,
                      ),
                      height(40),
                      SizedBox(
                          width: double.infinity,
                          child: buttonText(
                              text: lang("Log in"), onPressed: () {})),
                      height(40),
                      Builder(builder: (contex) {
                        if (args["type"] != 'Owner') {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: ConstApp.colors().blue2,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              lang(
                                  "Use the cashier code that can be created by the Owner in Manage Store -> Cashier Code"),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                          );
                        }
                        return Container();
                      })
                    ])))));
  }
}
