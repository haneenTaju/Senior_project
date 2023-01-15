// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kua_map/const_style/app_colors.dart';
import 'package:kua_map/widgets/k_bg_widget.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return KBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Container(height: 40),
                  AvtarPic(),
                  SizedBox(height: 20),
                  Text(
                    "Hello, User name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            //* add locgic
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              Icon(
                                Icons.favorite,
                                color: AppColors.gray400,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Favorites",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 2, height: 16),
                        //
                        GestureDetector(
                          onTap: () {
                            //* add locgic
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              Icon(
                                Icons.person,
                                color: AppColors.gray400,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Edit your profile",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 2, height: 16),
                        //
                        GestureDetector(
                          onTap: () {
                            //* add locgic
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              Icon(
                                Icons.add,
                                color: AppColors.gray400,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Add new location",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 2, height: 16),
                        //
                        GestureDetector(
                          onTap: () {
                            //* add locgic
                          },
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              Icon(
                                Icons.logout_rounded,
                                color: AppColors.gray400,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "logout",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
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

class AvtarPic extends StatelessWidget {
  const AvtarPic({
    Key? key,
    this.radius = 50.0,
    this.imageUrl,
  }) : super(key: key);
  final double radius;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: AppColors.gray400,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
      child: (imageUrl != null)
          ? SizedBox()
          : Center(
              child: Icon(
                Icons.image_outlined,
                size: radius,
                color: AppColors.white,
              ),
            ),
    );
  }
}
