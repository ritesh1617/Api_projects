import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Screen2 extends StatelessWidget {
  Screen2({required this.fristscreendata});

  final String fristscreendata;
  final TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              '$fristscreendata',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: pass,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(Screen3(screen2data: pass.text));
              },
              child: Text("Send Data")),
        ],
      ),
    );
  }
}
