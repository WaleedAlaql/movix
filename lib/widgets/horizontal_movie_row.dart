import 'package:flutter/material.dart';
import 'package:movix/screens/movie_details_screen.dart';
import 'package:movix/model/movie_model.dart';

class HorizontalMovieRow extends StatelessWidget {
  final List<MovieModel> movies;

  const HorizontalMovieRow({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemCount: movies.length,
      itemBuilder: (context, index) {
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
            width: 130,
            margin: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      posterUrl,
                      fit: BoxFit.cover,
                      width: 130,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey,
                        child: Icon(Icons.broken_image, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  movie.title ?? '',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
