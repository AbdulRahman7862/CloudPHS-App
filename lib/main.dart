import 'package:cloudphs/views/loginScreen.dart';
import 'package:cloudphs/views/mainScreen.dart';
import 'package:cloudphs/views/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/main', page: () => MainScreen()),
        GetPage(name:'/login', page:()=>LoginScreen()),
      ],
    );
  }
}




