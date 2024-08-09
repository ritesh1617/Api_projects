import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drwer.dart';
import 'package:flutter_application_1/bottmnavigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: MyBottomNavigation(),
    );
  }
}
