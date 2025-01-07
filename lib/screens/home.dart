import 'package:bookmyshow/screens/MovieDetails.dart';
import 'package:bookmyshow/widgets/Moviecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  movies = [
      {
        "movName": "Kalki 2898 AD",
        "format": "3D",
        "certificate": "UA",
        "releaseDate": "Jun 27, 2024",
        "genre": "Action Sci-Fi",
        "language": "Tamil",
        "storyLine": "When the world is taken over by darkness. A force will rise.",
        "imageUrl": "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQK4w8VeicgbIzOY11r2HE8fk0qtpCBmRyXsVQRr8fNuZxT8LsUa9AT7EdJBQaZTKv2lkEynQ",
        "duration": "3 hrs 1 min",
      },
      {
        "movName": "Oppenheimer",
        "format": "2D",
        "certificate": "A",
        "releaseDate": "Jul 21, 2023",
        "genre": "Drama",
        "language": "English",
        "storyLine": "The story of J. Robert Oppenheimer and his role in the development of the atomic bomb.",
        "imageUrl": "https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Oppenheimer_%28film%29.jpg/220px-Oppenheimer_%28film%29.jpg",
        "duration": "3 hrs",
      },
      {
        "movName": "Avatar",
        "format": "3D",
        "certificate": "U",
        "releaseDate": "Dec 16, 2022",
        "genre": "Adventure,Fantasy",
        "language": "English",
        "storyLine": "Jake Sully and Neytiri protect their family and explore Pandora.",
        "imageUrl": "https://m.media-amazon.com/images/M/MV5BNmQxNjZlZTctMWJiMC00NGMxLWJjNTctNTFiNjA1Njk3ZDQ5XkEyXkFqcGc@._V1_QL75_UX190_CR0,8,190,281_.jpg",
        "duration": "3 hrs 12 min",
      },
      {
        "movName": "Spider-Man",
        "format": "2D",
        "certificate": "UA",
        "releaseDate": "Dec 17, 2021",
        "genre": "Adventure, Fantasy",
        "language": "English",
        "storyLine": "Spider-Man's identity is revealed, and he seeks help to restore it.",
        "imageUrl": "https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@._V1_.jpg",
        "duration": "2 hrs 28 min",
      },
      {
        "movName": "Barbie",
        "format": "2D",
        "certificate": "U",
        "releaseDate": "Jul 21, 2023",
        "genre": "Comedy,Fantasy",
        "language": "English",
        "storyLine": "Barbie and Ken embark on a journey of self-discovery.",
        "imageUrl": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcROuK_Bl8jrLUP7fo3hsDC4XC2AC1WR1CAXS3G1SVqDPZE0pgFTQKnr8P2_cKmRuXg03nPE",
        "duration": "1 hr 54 min",
      },
      {
        "movName": "Dune: Part Two",
        "format": "2D",
        "certificate": "UA",
        "releaseDate": "Mar 15, 2024",
        "genre": "Adventure,Sci-Fi",
        "language": "English",
        "storyLine": "Paul Atreides unites with the Fremen to fight for Arrakis.",
        "imageUrl": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSt7xlJEzb-xopDqcQ6iw9SbY8PAlJN8H7DYUzTqmZkwLT9o8JXv6YWvDMGRKwkyRnf6RHzGg",
        "duration": "2 hrs 46 min",
      },
      {
        "movName": "The Marvels",
        "format": "2D",
        "certificate": "UA",
        "releaseDate": "Nov 10, 2023",
        "genre": "Adventure,Sci-Fi",
        "language": "English",
        "storyLine": "Carol Danvers teams up with Ms. Marvel and Monica Rambeau to save the universe.",
        "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr2CHFXhorQkI9wP5KMf290fdqX7eRnl95P_BddZBIEuCqOAI7FYUnILfgo_ovnCK4ppeQyA",
        "duration": "1 hr 45 min",
      },
      {
        "movName": "John Wick:Chapter4",
        "format": "2D",
        "certificate": "A",
        "releaseDate": "Mar 24, 2023",
        "genre": "Action Crime Thriller",
        "language": "English",
        "storyLine": "John Wick faces the High Table in a final showdown.",
        "imageUrl": "https://m.media-amazon.com/images/I/81fk-N7tvbL._AC_UF894,1000_QL80_.jpg",
        "duration": "2 hrs 49 min",
      },
      {
        "movName": "Mission:Impossible ",
        "format": "2D",
        "certificate": "UA",
        "releaseDate": "Jul 12, 2023",
        "genre": "Adventure,Thriller",
        "language": "English",
        "storyLine": "Ethan Hunt and his IMF team track down a dangerous weapon.",
        "imageUrl": "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR34_otMSvSpe1Nn8Iip4kpkcaAHrUGaIITwQYC9iRIL4q34rHhTY2cTYrbRe303iD5fdsm",
        "duration": "2 hrs 43 min",
      },
      {
        "movName": "Fast X",
        "format": "2D",
        "certificate": "UA",
        "releaseDate": "May 19, 2023",
        "genre": "Action,Crime",
        "language": "English",
        "storyLine": "Dom Toretto and his family face a new threat from the past.",
        "imageUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQanLn4C93_fZCHLoMmGhQHJLjM4eHbhN23Eu8OpF7-8wDqBw2ehb_TvjAknVD-8NvtqAinXw",
        "duration": "2 hrs 21 min",
      },
    ];

    return Scaffold(
        appBar: AppBar(
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              itemBuilder: (context, index) {
                final movie = movies[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MovieDetailsPage(
                                  movName: movie['movName']?? "",
                                  genre: movie['genre']?? "",
                                  language: movie['language']?? "",
                                  storyLine: movie['storyLine']?? "",
                                  format: movie['format']?? "",
                                  certificate: movie['certificate']?? "",
                                  releaseDate: movie['releaseDate']?? "",
                                  imageUrl: movie['imageUrl']?? "",
                                  duration: movie['duration']?? "",
                                )
                        )
                    );
                  },
                  child: MovieCard(
                    movName: movie['movName']!,
                    genre: movie['genre']!,
                    language: movie['language']!,
                    image: movie['imageUrl']!,
                  ),
                );
              }
          ),
        )
    );
  }
}
