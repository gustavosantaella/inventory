import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/height.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:point_of_sales/helpers/styles/button.dart';
import 'package:point_of_sales/helpers/styles/button_text.dart';
import 'package:point_of_sales/helpers/styles/text.dart';
import 'package:point_of_sales/widgets/SoftPOS.dart';
import 'package:point_of_sales/widgets/app_bar_back_button.dart';
import 'package:point_of_sales/widgets/input.dart';
import 'package:point_of_sales/widgets/line.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  submit() async {
    await Navigator.popAndPushNamed(context, "/home");
  }

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
      body: SoftPOS(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ConstApp.padding),
          child: Column(
            children: [
              SvgPicture.asset("assets/4.svg"),
              height(5),
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
                  onPressed: submit),
              height(40),
              Wrap(
                spacing: 10,
                children: [
                  line(),
                  line(),
                  line(),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
