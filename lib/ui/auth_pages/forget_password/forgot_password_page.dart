// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kua_map/const_style/app_colors.dart';
import 'package:kua_map/ui/auth_pages/forget_password/send_forgot_message_page.dart';
import 'package:kua_map/widgets/k_bg_widget.dart';
import 'package:kua_map/widgets/widget_export.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                    "Forgot Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        KtextField(hint: "Enter your Email"),
                        SizedBox(height: 40),
                        KBtn(
                          text: "Continue",
                          onPress: () {
                            //* send rest password mail
                            Get.off(() => SendForgotMessagePage());
                          },
                        ),
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
