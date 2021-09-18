import 'package:flutter_movies_app/src/domain/entities/movie.dart';
import 'package:flutter_movies_app/src/domain/repositories/movie_repository.dart';

class GetMovies {
  final MovieRepository repository;

  GetMovies(this.repository);

  Future<List<Movie>> execute({int? page, String? language}) async {
    return await repository.getTrending(page: page, language: language);
  }
}
