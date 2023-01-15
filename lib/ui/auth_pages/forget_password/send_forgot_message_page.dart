// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kua_map/const_style/app_colors.dart';
import 'package:kua_map/widgets/k_bg_widget.dart';

class SendForgotMessagePage extends StatelessWidget {
  const SendForgotMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return KBg(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "A Verification email has been sent",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Text(
                "Please check your emailto reset your password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
