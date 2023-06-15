import 'package:flutter/material.dart';
import 'package:movie_api/model/movie.dart';
import 'package:movie_api/view/movieOverview.dart';

class BoxMovie extends StatelessWidget{

  Movie mov;
  
  BoxMovie({required this.mov});

  @override
  Widget build(BuildContext context){
    print("error 2");
    return ListTile(
      title: Text(this.mov.title),
      subtitle: Text(this.mov.vote_average.toString()+" ("+this.mov.vote_count.toString()+")"),
      trailing: Image.network(this.mov.getImage()),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => MovieOverview (movie: this.mov)));
      },
    );
  }

}