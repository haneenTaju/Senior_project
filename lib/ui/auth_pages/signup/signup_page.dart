// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kua_map/widgets/k_bg_widget.dart';
import 'package:kua_map/widgets/widget_export.dart';

import '../../../const_style/app_colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    "Sign up",
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
                          hint: "Enter Your First Name",
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        KtextField(
                          hint: "Enter Your Last Name",
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        KtextField(
                          hint: "Enter Your Email",
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        KtextField(
                          // controller: textEditingController,
                          hint: "Enter Your Password",
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          isPassword: true,
                        ),
                        SizedBox(height: 25),
                        KtextField(
                          // controller: textEditingController,
                          hint: "Confirm Your Password",
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          isPassword: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  KBtn(
                    width: 140,
                    text: "Sign Up",
                    onPress: () {
                      // * Login Fun;
                      // print("object");
                    },
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account! ",
                      style: TextStyle(
                        color: AppColors.mainBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "Login",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //* back to Login page
                              Get.back();
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
