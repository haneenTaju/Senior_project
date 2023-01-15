// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kua_map/const_style/app_colors.dart';
import 'package:kua_map/ui/auth_pages/forget_password/forgot_password_page.dart';
import 'package:kua_map/ui/auth_pages/signup/signup_page.dart';
import 'package:kua_map/ui/home_page/home_page.dart';
import 'package:kua_map/widgets/k_bg_widget.dart';

import '../../../widgets/widget_export.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();

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
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        KtextField(
                          hint: "Enter Your Email",
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        KtextField(
                          controller: textEditingController,
                          hint: "Enter Your Password",
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          isPassword: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      // * forgot password page
                      Get.to(() => ForgotPasswordPage());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColors.mainBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  KBtn(
                    width: 140,
                    text: "Login",
                    onPress: () {
                      // * Login Fun;
                      Get.offAll(() => HomePage());
                    },
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: AppColors.mainBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "Signup",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //* signup page
                              Get.to(() => SignupPage());
                            },
                        )
                      ],
                    ),
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
