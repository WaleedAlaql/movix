class MovieModel {
  final int? id;
  final String? title;
  final String? posterPath;
  final String? backdropPath;
  final double? voteAverage;
  final String? overview;
  final String? releaseDate;

  MovieModel({
    this.id,
    this.title,
    this.posterPath,
    this.backdropPath,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      overview: json['overview'],
      releaseDate: json['release_date'],
    );
  }
}
