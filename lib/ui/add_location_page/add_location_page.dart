// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kua_map/widgets/k_text_field.dart';

import '../../const_style/app_colors.dart';

class AddLocationPage extends StatefulWidget {
  const AddLocationPage({super.key});

  @override
  State<AddLocationPage> createState() => _AddLocationPageState();
}

class _AddLocationPageState extends State<AddLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.mainBlue),
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          "Add Place",
          style: TextStyle(color: AppColors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Place details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Provide some information about this place. if this place is added to map, it will appear publicly.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.black45,
              ),
            ),
            SizedBox(height: 30),
            KtextField(
              hint: "Place name (requird)*",
              ishintUseAslabel: true,
              isfill: true,
            ),
            SizedBox(height: 20),
            KtextField(
              hint: "Category (requird)*",
              ishintUseAslabel: true,
              isfill: true,
            ),
            SizedBox(height: 20),
            KtextField(
              hint: "Address (requird)*",
              ishintUseAslabel: true,
              isfill: true,
            ),
          ],
        ),
      ),
    );
  }
}
