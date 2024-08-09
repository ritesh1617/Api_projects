import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farm2City'),
      ),
      body: Center(
        child: Text('Welcome to Farm2City!'),
      ),
    );
  }
}
