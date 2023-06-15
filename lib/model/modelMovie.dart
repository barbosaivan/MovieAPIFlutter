import 'package:movie_api/model/movie.dart';

class ModelMovie {
  ModelMovie();

  static List<Movie> fromJsonList(List<dynamic> jsonList) {
    List<Movie> ListaPeliculas = [];
    if (jsonList != null) {
      for (var pelicula in jsonList) {
        final movie = Movie.fromJson(pelicula);
        ListaPeliculas.add(movie);
      }
    }
    return ListaPeliculas;
  }
}
