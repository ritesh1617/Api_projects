import 'package:flutter/material.dart';
import 'package:flutter_application_4/albam.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: albam1(),
    );
  }
}
