import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen1.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ColorChangeScreen(),
    );
  }
}
