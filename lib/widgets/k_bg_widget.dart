// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class KBg extends StatelessWidget {
  const KBg({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    // ));
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
