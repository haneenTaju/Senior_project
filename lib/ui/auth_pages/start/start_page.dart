// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kua_map/const_style/app_colors.dart';
import 'package:kua_map/ui/auth_pages/login/login_page.dart';
import 'package:kua_map/ui/home_page/home_page.dart';
import 'package:kua_map/widgets/k_bg_widget.dart';

import '../../../widgets/widget_export.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // final myColor = AppColors.instance;
  @override
  Widget build(BuildContext context) {
    return KBg(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  AppLogo(),
                  SizedBox(height: 40),
                  Text(
                    "Welcome to KUA MAP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 40),
                  KBtn(
                    width: 140,
                    text: "Login",
                    onPress: () {
                      // * Login Fun;
                      Get.to(() => LoginPage());
                      // print("object");
                    },
                  ),
                  SizedBox(height: 40),
                  Text("or", style: TextStyle(fontWeight: FontWeight.w500)),
                  SizedBox(height: 40),
                  KBtn(
                    width: 140,
                    text: "Guest",
                    onPress: () {
                      // * Guest Fun;
                      Get.to(() => HomePage());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
