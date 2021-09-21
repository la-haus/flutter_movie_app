import 'package:flutter_movies_app/src/domain/entities/movie.dart';

class MoviesState {
  MoviesState(this._movies);

  final List<Movie> _movies;

  List<Movie> get movies => _movies;
}

class MoviesLoading extends MoviesState {
  MoviesLoading(List<Movie> movies) : super(movies);
}

class MoviesLoaded extends MoviesState {
  MoviesLoaded(List<Movie> movies) : super(movies);
}

class MoviesLoadingError extends MoviesState {
  MoviesLoadingError(
    List<Movie> movies,
    this.message,
  ) : super(movies);

  final String message;
}
