import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kua_map/init_controller.dart';
import 'package:kua_map/ui/auth_pages/start/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const StartPage(),
      initialBinding: InitController(),
    );
  }
}
