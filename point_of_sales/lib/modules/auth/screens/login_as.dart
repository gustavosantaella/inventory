import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';
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
                      POSInput(
                        errorText: null,
                        label: lang("Employee code"),
                        controller: usernameController,
                      ),
                      POSInput(
                        errorText: null,
                        label: lang("Password"),
                        controller: passwordController,
                      )
                    ])))));
  }
}
