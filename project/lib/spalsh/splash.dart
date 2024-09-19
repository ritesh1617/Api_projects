import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Auth/Loginscreen.dart';
import 'package:project/Theme/color.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.offAll(LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Image.asset("assets/splash/trading_buddy_logo.png"),
      ),
    );
  }
}
