import 'package:flutter/material.dart';
import 'package:minto/utils/constants/colors.dart';

class EditTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final controller;

  const EditTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: textFieldColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Mwhite),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Mwhite),
          ),
          fillColor: Color.fromARGB(255, 231, 231, 231),
          filled: true,
        ),
      ),
    );
  }
}
