import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserGridView extends StatelessWidget {
  List dataList = [];

  UserGridView({required this.dataList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dataList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: dataList[index].image,
                  height: 60,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    dataList[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
