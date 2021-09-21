import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movies_app/src/domain/entities/movie.dart';
import 'package:flutter_movies_app/src/domain/usecases/get_movies.dart';
import 'package:flutter_movies_app/src/presentation/bloc/movies_state.dart';

class TrendingMoviesCubit extends Cubit<MoviesState> {
  TrendingMoviesCubit(this.trendingMovies) : super(MoviesLoading([]));

  final GetMovies trendingMovies;
  final List<Movie> _movies = [];
  int _page = 1;

  void fetchMovies() async {
    try {
      emit(MoviesLoading(_movies));
      final movies = await trendingMovies.execute(page: _page);
      _page++;
      emit(MoviesLoaded(_movies..addAll(movies)));
    } on Exception {
      emit(MoviesLoadingError(
        _movies,
        "Ha ocurrido un error cargando las peliculas",
      ));
    }
  }
}
