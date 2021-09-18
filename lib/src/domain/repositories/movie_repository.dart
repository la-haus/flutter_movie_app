import 'package:flutter_movies_app/src/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getTrending({
    int? page,
    String? language,
  });
}
