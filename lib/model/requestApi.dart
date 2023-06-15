import 'package:movie_api/model/modelMovie.dart';
import 'package:movie_api/model/movie.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class requestApi {
  static final String API_URL = "https://api.themoviedb.org/3";
  static final String API_KEY = "11c8c8a29cb2a058fd038425f556cefc";
  static final String PATH_TOP_RATE = "/movie/top_rated";

  static Future<List<Movie>> getTopRateMovies() async {
    var url = "$API_URL$PATH_TOP_RATE?api_key=$API_KEY";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      final moviesTopRate = ModelMovie.fromJsonList(responseJson['results']);
      return moviesTopRate;
    }
    return <Movie>[];
  }
}
