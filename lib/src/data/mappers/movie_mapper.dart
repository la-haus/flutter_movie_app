import 'package:flutter_movies_app/src/domain/entities/movie.dart';

const imageUrl = 'http://image.tmdb.org/t/p/w300';

class MovieMapper extends Movie {
  MovieMapper({
    required id,
    required title,
    required backdropImage,
    posterImage,
    releaseDate,
    overview,
  }) : super(
          id: id,
          title: title,
          backdropImage: backdropImage,
          posterImage: posterImage,
          releaseDate: releaseDate,
          overview: overview,
        );

  factory MovieMapper.fromJson(dynamic json) {
    DateTime? date;

    if (json['release_date'] != null) {
      date = DateTime.parse(json['release_date']);
    }

    return MovieMapper(
      id: json['id'],
      title: json['title'] ?? json['original_title'] ?? json['original_name'],
      backdropImage: '$imageUrl${json["backdrop_path"]}',
      posterImage: '$imageUrl${json["poster_path"]}',
      releaseDate: date,
      overview: json['overview'],
    );
  }
}
