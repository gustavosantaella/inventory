import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginOrSigin extends StatefulWidget {
  const LoginOrSigin({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginOrSigingState();
  }
}

class _LoginOrSigingState extends State<LoginOrSigin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(3),
                child: SingleChildScrollView(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 5),
                      Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/2.svg",
                            height: 100,
                            width: 600,
                          ),
                          Text(
                            "${ConstApp.appName}.",
                            style: TextStyle(
                                color: ConstApp.colors().blue,
                                fontSize: 37,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      SvgPicture.asset(
                        "assets/1.svg",
                      ),
                      const SizedBox(height: 40),
                      Text(
                        lang("Easy Management for your Store"),
                        style: TextStyle(color: ConstApp.colors().black1),
                      ),
                      const SizedBox(height: 88),
                      SizedBox(
                          width: 327,
                          height: 57,
                          child: TextButton(
                              style: buttonStyle(),
                              onPressed: () async {},
                              child: Text(lang("Create new account"),
                                  style:
                                      const TextStyle(color: Colors.white)))),
                      const SizedBox(height: 20),
                      SizedBox(
                          width: 327,
                          height: 57,
                          child: TextButton(
                              style: buttonStyle(
                                  color: Colors.white,
                                  borderColor: ConstApp.colors().blue),
                              onPressed: () async {},
                              child: Text(lang("Log in"),
                                  style: TextStyle(
                                      color: ConstApp.colors().blue)))),
                      const SizedBox(height: 50),
                    ],
                  ),
                )))));
  }
}