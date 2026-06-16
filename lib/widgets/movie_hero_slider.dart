import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:movix/screens/movie_details_screen.dart';
import '../../model/movie_model.dart';

class MovieHeroSlider extends StatelessWidget {
  final List<MovieModel> movies;

  const MovieHeroSlider({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: movies.length > 5 ? 5 : movies.length,
      itemBuilder: (context, index, realIndex) {
        final movie = movies[index];
        final posterUrl = 'https://image.tmdb.org/t/p/w500${movie.posterPath}';

        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailsScreen(movie: movie),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(posterUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.9),
                    Colors.transparent,
                  ],
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title ?? '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star_rounded, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text(
                        movie.voteAverage?.toStringAsFixed(1) ?? '0.0',
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 380,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(seconds: 4),
        viewportFraction: 0.85,
      ),
    );
  }
}
