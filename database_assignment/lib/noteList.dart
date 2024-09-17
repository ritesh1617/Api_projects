import 'package:database_assignment/add_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Notelist extends StatefulWidget {
  const Notelist({super.key});

  @override
  State<Notelist> createState() => _NotelistState();
}

int count = 0;

class _NotelistState extends State<Notelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Notes".text.make(),
        backgroundColor: Colors.purpleAccent,
      ),
      body: getListview(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatetoDetail("Add Note");
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getListview() {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium;

    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, int position) {
        return Card(
          elevation: 2,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: "Dummy title".text.make(),
            subtitle: "Dummy".text.make(),
            trailing: Icon(Icons.delete),
            onTap: () {
              navigatetoDetail("Edit Note");
            },
          ),
        );
      },
    );
  }

  void navigatetoDetail(String title) {
    Get.to(notes_add_Screen(
      title,
      Appbartitle: title,
    ));
  }
}
