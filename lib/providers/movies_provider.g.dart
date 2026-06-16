// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(trendingMovies)
final trendingMoviesProvider = TrendingMoviesProvider._();

final class TrendingMoviesProvider extends $FunctionalProvider<
        AsyncValue<List<MovieModel>>,
        List<MovieModel>,
        FutureOr<List<MovieModel>>>
    with $FutureModifier<List<MovieModel>>, $FutureProvider<List<MovieModel>> {
  TrendingMoviesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'trendingMoviesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$trendingMoviesHash();

  @$internal
  @override
  $FutureProviderElement<List<MovieModel>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<MovieModel>> create(Ref ref) {
    return trendingMovies(ref);
  }
}

String _$trendingMoviesHash() => r'3e5eeed50afcf61a4a96b423daefdc168ebd0175';

@ProviderFor(topRatedMovies)
final topRatedMoviesProvider = TopRatedMoviesProvider._();

final class TopRatedMoviesProvider extends $FunctionalProvider<
        AsyncValue<List<MovieModel>>,
        List<MovieModel>,
        FutureOr<List<MovieModel>>>
    with $FutureModifier<List<MovieModel>>, $FutureProvider<List<MovieModel>> {
  TopRatedMoviesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'topRatedMoviesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$topRatedMoviesHash();

  @$internal
  @override
  $FutureProviderElement<List<MovieModel>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<MovieModel>> create(Ref ref) {
    return topRatedMovies(ref);
  }
}

String _$topRatedMoviesHash() => r'a7c692e93d35f5c66357391cfece5c1e16900aa4';
