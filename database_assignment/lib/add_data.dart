import 'package:database_assignment/noteList.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class notes_add_Screen extends StatefulWidget {
  String Appbartitle;

  notes_add_Screen(String title, {super.key, required this.Appbartitle});

  @override
  State<notes_add_Screen> createState() =>
      _notes_add_ScreenState(this.Appbartitle);
}

class _notes_add_ScreenState extends State<notes_add_Screen> {
  static var prorities = ['High', 'Low'];
  String Appbartitle;

  TextEditingController title = TextEditingController();
  TextEditingController Desc = TextEditingController();

  _notes_add_ScreenState(this.Appbartitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Appbartitle.text.make(),
      ),
      body: Column(
        children: [
          ListTile(
            title: DropdownButton(
                items: prorities.map((String dropDownStringItem) {
                  return DropdownMenuItem(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem));
                }).toList(),
                value: 'Low',
                onChanged: (Value) {
                  setState(() {});
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: title,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: Desc,
              decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purpleAccent),
                    minimumSize: MaterialStateProperty.all(Size(150, 40)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                20.widthBox,
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purpleAccent),
                      minimumSize: MaterialStateProperty.all(
                          Size(150, 40)), // Increase size here
                    ),
                    onPressed: () {},
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
