import 'package:movix/model/movie_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/movie_service.dart';

part 'movies_provider.g.dart';

@riverpod
Future<List<MovieModel>> trendingMovies(Ref ref) {
  return ref.watch(movieServiceProvider).fetchTrendingMovies();
}

@riverpod
Future<List<MovieModel>> topRatedMovies(Ref ref) {
  return ref.watch(movieServiceProvider).fetchTopRatedMovies();
}
