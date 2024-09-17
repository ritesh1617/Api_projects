import 'package:flutter/material.dart';
import 'package:flutter_application_4/model.dart';
import 'package:flutter_application_4/secondscreen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class albam1 extends StatefulWidget {
  const albam1({super.key});

  @override
  State<albam1> createState() => _albam1State();
}

class _albam1State extends State<albam1> {
  final apiURL = "https://jsonplaceholder.typicode.com/albums/";

  late List<Album> albumdata;

  @override
  void initState() {
    super.initState();
    albumdata = [];
    getAllAlbums();
  }

  void getAllAlbums() async {
    var response = await http.get(Uri.parse(apiURL));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      setState(() {
        albumdata = jsonResponse.map((album) => Album.fromJson(album)).toList();
      });
    }
  }

  void deleteAlbum(int index) {
    setState(() {
      albumdata.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albums'),
      ),
      body: albumdata.isNotEmpty
          ? ListView.builder(
              itemCount: albumdata.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AlbumDetail(album: albumdata[index]),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: ListTile(
                        title: Text(albumdata[index].title),
                        trailing: IconButton(
                            onPressed: () {
                              deleteAlbum(index);
                            },
                            icon: Icon(Icons.delete)),
                      ),
                    ),
                  ),
                );
              },
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
