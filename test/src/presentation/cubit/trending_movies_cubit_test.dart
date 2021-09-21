import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_movies_app/src/domain/usecases/get_movies.dart';
import 'package:flutter_movies_app/src/presentation/bloc/movies_state.dart';
import 'package:flutter_movies_app/src/presentation/bloc/trending_movies_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'trending_movies_cubit_test.mocks.dart';

@GenerateMocks([GetMovies])
void main() {
  late GetMovies getMovies;
  late TrendingMoviesCubit trendingMoviesCubit;

  setUp(() async {
    getMovies = MockGetMovies();
    trendingMoviesCubit = TrendingMoviesCubit(getMovies);
  });

  group('TrendingMoviesCubit', () {
    test('Should initilize with a [MoviesLoading] state', () {
      expect(trendingMoviesCubit.state.runtimeType, MoviesLoading);
    });

    blocTest<TrendingMoviesCubit, MoviesState>(
      'Should emit a [MoviesLoading] and [MoviesLoaded] state when fetch movies have been called',
      build: () => TrendingMoviesCubit(getMovies),
      act: (TrendingMoviesCubit cubit) {
        when(getMovies.execute(page: any)).thenAnswer((_) async => []);

        cubit.fetchMovies();
      },
      expect: () => [],
    );
  });
}
