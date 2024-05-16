import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:point_of_sales/config/constants.dart';
import 'package:point_of_sales/helpers/lang.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:point_of_sales/helpers/styles/button.dart';
import 'package:point_of_sales/widgets/app_bar_back_button.dart';

class LoginAsOwnerOrEmployee extends StatefulWidget {
  const LoginAsOwnerOrEmployee({super.key});

  @override
  State<StatefulWidget> createState() => _LoginAsOwnerOrEmployeeState();
}

class _LoginAsOwnerOrEmployeeState extends State<LoginAsOwnerOrEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 60,
          centerTitle: true,
          leading: backButton(() {
            Navigator.pop(context);
          }),
          title: Text(
            lang("Log in"),
            style: TextStyle(
                color: ConstApp.colors().blue, fontWeight: FontWeight.w500),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ConstApp.padding * 2),
            child: Column(
              children: [
                const SizedBox(
                  height: 44,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      lang("Welcome to the app!"),
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      lang(
                          "Select login as the owner or employee first to continue."),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                SvgPicture.asset("assets/3.svg"),
                const SizedBox(height: 50),
                TextButton(
                  onPressed: () {},
                  style: buttonStyle(borderRadius: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          Text(
                            lang("Log in as Owner"),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  lang("Or"),
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
                const SizedBox(height: 12),
                TextButton(
                    onPressed: () {},
                    style: buttonStyle(borderRadius: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.people,
                              color: Colors.white,
                            ),
                            Text(
                              lang("Log in as Employee"),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ]),
                    )),
              ],
            ),
          ),
        )));
  }
}
