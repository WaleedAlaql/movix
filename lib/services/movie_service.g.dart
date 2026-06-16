// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(movieService)
final movieServiceProvider = MovieServiceProvider._();

final class MovieServiceProvider
    extends $FunctionalProvider<MovieService, MovieService, MovieService>
    with $Provider<MovieService> {
  MovieServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'movieServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$movieServiceHash();

  @$internal
  @override
  $ProviderElement<MovieService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MovieService create(Ref ref) {
    return movieService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieService>(value),
    );
  }
}

String _$movieServiceHash() => r'adc2c6a073e805ce64a268d8919d4056e4e48292';
