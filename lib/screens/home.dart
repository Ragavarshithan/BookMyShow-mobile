import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Book Tickets",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Sri Lanka >",
              style: TextStyle(
                fontSize: 15
              ),
              ),
            ),
          ]
        ),
        backgroundColor: Color(0xFF333545),
        foregroundColor: Colors.white,
      ),
    );
  }
  }