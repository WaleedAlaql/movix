import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movix/model/movie_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_service.g.dart';

@riverpod
MovieService movieService(Ref ref) {
  return MovieService();
}

class MovieService {
  final String _apiKey = '3ef96d44171ce7ef9f51e770a31e0a0f';

  Future<List<MovieModel>> fetchTrendingMovies() async {
    final url = Uri.parse(
        'https://api.themoviedb.org/3/trending/movie/day?api_key=$_apiKey&language=ar-SA');
    return _getMoviesFromUrl(url);
  }

  Future<List<MovieModel>> fetchTopRatedMovies() async {
    final url = Uri.parse(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=$_apiKey&language=ar-SA');
    return _getMoviesFromUrl(url);
  }

  Future<List<MovieModel>> _getMoviesFromUrl(Uri url) async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedData = jsonDecode(response.body);
        final List<dynamic> results = decodedData['results'];
        return results.map((json) => MovieModel.fromJson(json)).toList();
      } else {
        throw Exception('فشل جلب البيانات: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('خطأ في الشبكة: $e');
    }
  }
}
