import 'package:flutter/material.dart';
import 'package:hello_movies/models/movie.dart';

class MoviesWidget extends StatelessWidget {
  final List<Movie> movies;

  MoviesWidget({this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return Column(children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                child: Image.network(movie.poster),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ]);
        });
  }
}
