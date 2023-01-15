// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../const_style/app_colors.dart';

class KBtn extends StatelessWidget {
  const KBtn({
    Key? key,
    this.bgColor = AppColors.mainBlue,
    required this.text,
    this.textStyle = const TextStyle(
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    required this.onPress,
    this.width = double.maxFinite,
    this.height = 40,
  }) : super(key: key);

  final Color bgColor;
  final String text;
  final TextStyle textStyle;
  final Function() onPress;
  final double? width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Material(
        color: AppColors.transparent,
        child: InkWell(
          onTap: onPress,
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
