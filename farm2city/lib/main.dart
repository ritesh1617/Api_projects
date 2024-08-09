import 'package:farm2city/Screens/Auth/OnBording/onbordingscreen2.dart';
import 'package:farm2city/Screens/Auth/login.dart';
import 'package:farm2city/Screens/Homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Farm2CityApp());
}

class Farm2CityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingPages(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
