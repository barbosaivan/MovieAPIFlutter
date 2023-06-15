import 'package:flutter/material.dart';
import 'package:movie_api/model/movie.dart';


// ignore: must_be_immutable
class MovieOverview extends StatelessWidget{

  Movie movie;

  MovieOverview({required this.movie}): super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.movie.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Image.network(this.movie.getImage()),
          Text(this.movie.overview)
        ],
      ),
    );
  }

}