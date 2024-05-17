import 'package:flutter/material.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/height.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/button.dart';
import 'package:point_of_sales/helpers/styles/button_text.dart';
import 'package:point_of_sales/helpers/styles/text.dart';
import 'package:point_of_sales/widgets/ads/main_ad.dart';
import 'package:point_of_sales/widgets/app_bar_back_button.dart';
import 'package:point_of_sales/widgets/input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          lang("Sign Up"),
          style: primaryColorTitle(),
        ),
        centerTitle: true,
        leading: backButton(() {
          Navigator.pop(context);
        }),
      ),
      body: POSAd(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ConstApp.padding),
          child: Column(
            children: [
              height(44),
              POSInput(
                label: lang("Username"),
              ),
              height(20),
              POSInput(
                label: lang("Phone number"),
              ),
              height(20),
              POSInput(
                obscureText: true,
                suffixIcon: Icons.remove_red_eye_sharp,
                suffixIconOnPressed: () {},
                label: lang("Passowrd"),
              ),
              height(40),
              buttonText(
                  width: double.infinity,
                  text: lang("Submit"),
                  onPressed: () async {
                    await Navigator.popAndPushNamed(context, "/home");
                  })
            ],
          ),
        ),
      )),
    );
  }
}
