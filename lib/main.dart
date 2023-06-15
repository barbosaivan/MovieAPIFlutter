import 'package:flutter/material.dart';
import 'package:movie_api/model/requestApi.dart';
import 'package:movie_api/view/boxMovie.dart';
import 'package:movie_api/view/spinnerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie DB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MovieDBPage(),
    );
  }
}

class MovieDBPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies top rate"),
      ),
      body: FutureBuilder(
        future: requestApi.getTopRateMovies(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var movieItem = snapshot.data![index];
                print("error");
                print(movieItem.title);
                return BoxMovie(mov: movieItem);
              }
            );
          }else{
            return SpinnerWidget();
          }
        }
        ),
    );
  }
}

