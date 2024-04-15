
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../utils/button.dart';
import '../utils/textFieldWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = Rx<TextEditingController>(TextEditingController());
  final passwordController = Rx<TextEditingController>(TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:Image.asset("assets/images/logo.png")),
          const SizedBox(height: 10,),
          CustomTextField(
            controller:emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(height: 3,),
          CustomTextField(
            controller:passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(height: 3,),
          CustomButton(
            onPressed: (){},
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}
