class MovieModel {
  final int movId;
  final String movName;
  final String director;
  final String genre;
  final String language;
  final String storyLine;
  final String format;
  final double rating;

  MovieModel(
      {required this.movId,
      required this.movName,
      required this.director,
      required this.genre,
      required this.language,
      required this.storyLine,
      required this.format,
      required this.rating});
}
