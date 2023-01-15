// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../widgets/outline_text.dart';

class GatesWidget extends StatelessWidget {
  const GatesWidget({
    Key? key,
    required this.gateName,
  }) : super(key: key);
  final String gateName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        OutlineText(text: gateName),
      ],
    );
  }
}
