import 'package:flutter/material.dart';
import 'package:hello_movies/models/movie.dart';

class MoviesWidget extends StatelessWidget {
  final List<Movie> movies;

  const MoviesWidget({this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Image.network(movies[index].poster),
                borderRadius: BorderRadius.circular(10),
              ),
            );
          }),
    );
  }
}
