// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kua_map/const_style/app_colors.dart';

class KtextField extends StatefulWidget {
  const KtextField({
    super.key,
    required this.hint,
    this.controller,
    this.isPassword = false,
    this.focusColor = AppColors.mainBlue,
    this.isfill = true,
    this.fillColor = AppColors.white,
    this.textInputAction = TextInputAction.done,
    this.textInputType = TextInputType.text,
    this.ishintUseAslabel = false,
  });
  final String hint;
  final TextEditingController? controller;
  final bool isPassword;
  final Color focusColor;
  final Color fillColor;
  final bool isfill;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool ishintUseAslabel;

  @override
  State<KtextField> createState() => _KtextFieldState();
}

class _KtextFieldState extends State<KtextField> {
  late bool isPasswordVisible;
  FocusNode myNode = FocusNode();
  @override
  void initState() {
    super.initState();
    if (widget.isPassword == true) {
      isPasswordVisible = true;
    } else {
      isPasswordVisible = false;
    }

    myNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    myNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: myNode,
      textInputAction: widget.textInputAction,
      keyboardType: widget.textInputType,
      controller: widget.controller,
      obscureText: isPasswordVisible,
      cursorColor: widget.focusColor,
      decoration: InputDecoration(
        // focusColor: AppColors.mainBlue,
        hintText: (widget.ishintUseAslabel) ? null : widget.hint,
        label: (widget.ishintUseAslabel)
            ? Text(
                widget.hint,
                style: TextStyle(color: myNode.hasFocus ? AppColors.mainBlue : null),
              )
            : null,
        filled: widget.isfill,
        fillColor: widget.fillColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        suffixIcon: (widget.isPassword)
            ? InkWell(
                onTap: () => setState(() => isPasswordVisible = !isPasswordVisible),
                child: Icon(
                  (isPasswordVisible) ? Icons.visibility_off : Icons.visibility,
                  color: myNode.hasFocus ? AppColors.mainBlue : AppColors.gray400,
                ),
              )
            : null,
        enabled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: widget.focusColor),
        ),
      ),
    );
  }
}
