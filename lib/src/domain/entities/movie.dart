class Movie {
  final int id;
  final String title;
  final String backdropImage;
  final String posterImage;
  final DateTime? releaseDate;
  final String? overview;

  Movie({
    required this.id,
    required this.title,
    required this.backdropImage,
    required this.posterImage,
    this.releaseDate,
    this.overview,
  });
}
