class Movie {
  final int id;
  final String title;
  final String backdropPath;
  final String? posterPath;
  final DateTime? releaseDate;
  final String? overview;

  Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    this.posterPath,
    this.releaseDate,
    this.overview,
  });
}
