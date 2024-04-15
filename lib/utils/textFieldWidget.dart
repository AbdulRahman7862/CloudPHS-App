import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final Rx<TextEditingController> controller;
  final String hintText;
  final bool obscureText;
  final double borderRadius;

  CustomTextField({
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.borderRadius = 10.0, // Default border radius
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        margin: const EdgeInsets.all(11.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.grey), // Border color
        ),
        child: TextFormField(
          controller: controller.value,
          obscureText: obscureText,
          autofocus: false, // Prevent autofocus and automatic keyboard opening
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none, // Remove default border
            contentPadding: EdgeInsets.zero, // Remove default content padding
          ),
        ),
      );
    });
  }
}
