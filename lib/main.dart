import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_movies/models/movie.dart';
import 'package:hello_movies/widgets/CustomAppBar.dart';
import 'package:hello_movies/widgets/CustomSearchBar.dart';
import 'package:hello_movies/widgets/moviesWidget.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
  // ignore: deprecated_member_use
  List<Movie> _movies = new List<Movie>();

  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final movies = await _fetchAllMovies();
    setState(() {
      _movies = movies;
    });
  }

  Future<List<Movie>> _fetchAllMovies() async {
    final response = await http
        .get("http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa");

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["Search"];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Movies App",
        home: Scaffold(
            body: SafeArea(
          child: ListView(children: [
            SizedBox(height: 5),
            CAppBar(),
            SizedBox(height: 10),
            Text(
              "Find Movies,TV Shows",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            Text(
              "and more",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            SizedBox(height: 5),
            SEARCHBAR(),
            // MoviesWidget(movies: _movies)
          ]),
        )));
  }
}
