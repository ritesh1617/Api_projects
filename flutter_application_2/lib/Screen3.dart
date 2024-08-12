import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key, required this.screen2data});
  final String screen2data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "$screen2data",
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
