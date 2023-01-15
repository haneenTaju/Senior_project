// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../const_style/app_colors.dart';

class OutlineText extends StatelessWidget {
  const OutlineText({
    Key? key,
    required this.text,
    this.color = Colors.white,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..color = AppColors.black45
              ..strokeWidth = 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
