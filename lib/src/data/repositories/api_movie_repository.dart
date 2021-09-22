import 'dart:convert';

import 'package:flutter_movies_app/src/data/mappers/movie_mapper.dart';
import 'package:flutter_movies_app/src/domain/entities/movie.dart';
import 'package:flutter_movies_app/src/domain/repositories/movie_repository.dart';
import 'package:http/http.dart' as http;

class ApiMovieRepository implements MovieRepository {
  // TODO: move to environment variables.
  final _baseUrl = 'api.themoviedb.org';
  final _trendingUrl = '/3/trending/all/day';
  final _apiKey = 'd56a7d94fa1c4231cdaa67090cbf5f97';

  @override
  Future<List<Movie>> getTrending({int? page, String? language}) async {
    var url = Uri.https(_baseUrl, _trendingUrl, {
      'api_key': _apiKey,
      'page': page?.toString() ?? '1',
      'language': 'es-ES'
    });

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Ocurrio un error cargando las peliculas');
    }

    final responseBody =
        json.decode(response.body.toString()) as Map<String, dynamic>;
    final movies = responseBody['results'] as List<dynamic>;

    final result = movies.map((movie) => MovieMapper.fromJson(movie)).toList();

    return result;
  }
}
