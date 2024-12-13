import 'package:bookmyshow/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final movies = [
      {
        "movName": "The Marvels",
        "genre": "Action",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/pushpa-the-rule-part-2-et00005332-17-06-2024-05-50-11.jpg"
      },
      {
        "movName": "Oppenheimer",
        "genre": "Drama",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/moana-2-et00005573-28-11-2024-01-24-57.jpg"
      },
      {
        "movName": "Dune: Part Two",
        "genre": "Sci-Fi",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/kanguva-et00005551-08-11-2024-07-00-05.jpg"
      },
      {
        "movName": "Barbie",
        "genre": "Comedy",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/amaran-et00005506-14-10-2024-07-10-41.jpg"
      },
      {
        "movName": "Spider-Man",
        "genre": "Adventure",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/the-wild-robot-et00005489-24-09-2024-07-42-45.jpg"
      },
      {
        "movName": "Avatar",
        "genre": "Fantasy",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/venom-the-last-dance-et00005522-15-10-2024-12-42-29.jpg"
      },
      {
        "movName": "The Marvels",
        "genre": "Action",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/pushpa-the-rule-part-2-et00005332-17-06-2024-05-50-11.jpg"
      },
      {
        "movName": "Oppenheimer",
        "genre": "Drama",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/moana-2-et00005573-28-11-2024-01-24-57.jpg"
      },
      {
        "movName": "Dune: Part Two",
        "genre": "Sci-Fi",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/kanguva-et00005551-08-11-2024-07-00-05.jpg"
      },
      {
        "movName": "Barbie",
        "genre": "Comedy",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/amaran-et00005506-14-10-2024-07-10-41.jpg"
      },
      {
        "movName": "Spider-Man",
        "genre": "Adventure",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/the-wild-robot-et00005489-24-09-2024-07-42-45.jpg"
      },
      {
        "movName": "Avatar",
        "genre": "Fantasy",
        "language": "English",
        "image": "https://lk-aps.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/venom-the-last-dance-et00005522-15-10-2024-12-42-29.jpg"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Book Tickets",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sri Lanka >",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ]),
        backgroundColor: Color(0xFF333545),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: movies.length,
          itemBuilder: (context,index){
            final movie = movies[index];
            return MovieCard(
              movName: movie['movName']!,
              genre: movie['genre']!,
              language: movie['language']!,
              image: movie['image']!,
            );
          }
        ),
      )
    );
  }
}
