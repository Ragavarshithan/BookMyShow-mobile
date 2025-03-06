import 'package:bookmyshow/screens/showTimes.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  final String movName;
  final String format;
  final String certificate;
  final String releaseDate;
  final String genre;
  final String language;
  final String storyLine;
  final String imageUrl;
  final String duration;

  MovieDetailsPage(
      {required this.movName,
      required this.format,
      required this.certificate,
      required this.releaseDate,
      required this.genre,
      required this.language,
      required this.storyLine,
      required this.imageUrl,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movName),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.maxFinite,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          Text(
              movName,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20
            ),
          ),
          SizedBox(height: 8,),
          Row(
            children: [Text(certificate), Text("|"), Text(releaseDate)],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Text(duration),
              Text(genre)
            ],
          ),
          SizedBox(height: 8,),
          Text(language),
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey
              ),
              child: Text(format)
          ),
          SizedBox(height: 18),
          Text(storyLine),
          SizedBox(height: 15,),
          Text("LEAD CAST")
        ],
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Showtimes(movieName: movName,)
                )
            );
          },
          child: Text(
              "Book Tickets",
              style: TextStyle(
                color: Colors.white
              )
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.blueAccent),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)
              )
            )
          )
      ),
    );
  }
}
