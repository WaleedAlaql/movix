import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movix/widgets/horizontal_movie_row.dart';
import 'package:movix/widgets/movie_hero_slider.dart';
import '../providers/movies_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingAsync = ref.watch(trendingMoviesProvider);
    final topRatedAsync = ref.watch(topRatedMoviesProvider);

    return Scaffold(
      backgroundColor: Color(0xFF141414),
      appBar: AppBar(
        title: Text(
          'Movix',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            // 1. قسم الهيرو (استدعاء الويدجيت المفصولة)
            trendingAsync.when(
              loading: () => SizedBox(
                height: 300,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, stack) => SizedBox(
                height: 300,
                child: Center(
                  child: Text(
                    'خطأ في الهيرو: $err',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              data: (movies) => MovieHeroSlider(movies: movies),
            ),

            SizedBox(height: 24),

            // 2. قسم الأفلام الرائجة اليوم
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'الأفلام الرائجة اليوم',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 220,
              child: trendingAsync.when(
                loading: () => Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(
                  child: Text(
                    'خطأ: $err',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                data: (movies) => HorizontalMovieRow(movies: movies),
              ),
            ),

            SizedBox(height: 24),

            // 3. قسم الأفلام الأعلى تقييماً
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'الأعلى تقييماً',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 220,
              child: topRatedAsync.when(
                loading: () => Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(
                  child: Text(
                    'خطأ: $err',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                data: (movies) => HorizontalMovieRow(movies: movies),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
