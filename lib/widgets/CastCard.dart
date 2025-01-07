import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Castcard extends StatelessWidget {
  final String castName;
  final String imageUrl;


  Castcard(this.castName, this.imageUrl, Key? key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 5),
        Text(
          castName,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14
          ),
        )
      ],
    );
  }
}
