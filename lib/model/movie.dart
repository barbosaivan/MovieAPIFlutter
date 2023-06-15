class Movie {
  double popularity;
  int vote_count; 
  bool video;
  String poster_path;
  int id;
  bool adult;
  String backdrop_path;
  String original_language;
  String original_title;
  List<int> genre_ids;
  String title;
  double vote_average;
  String overview;
  String release_date;

  Movie({
    required this.popularity,
    required this.vote_count,
    required this.video,
    required this.poster_path,
    required this.id,
    required this.adult,
    required this.backdrop_path,
    required this.original_language,
    required this.original_title,
    required this.genre_ids,
    required this.title,
    required this.vote_average,
    required this.overview,
    required this.release_date
  });

  static Movie fromJson(Map<String, dynamic> json){
    return Movie(
      popularity: (json['popularity'] as num).toDouble(), 
      vote_count: json['vote_count'] as int,
      video: json['video'] as bool,
      poster_path: json['poster_path'] as String,
      id: json['id'] as int, 
      adult: json['adult'] as bool, 
      backdrop_path: json['backdrop_path'] as String, 
      original_language: json['original_language'] as String, 
      original_title: json['original_title'] as String, 
      genre_ids: (json['genre_ids'] as List).map((e) => e as int).toList(),
      title: json['title'] as String,
      vote_average: (json['vote_average'] as num).toDouble(),
      overview: json['overview'] as String, 
      release_date: json['release_date'] as String
    );
  }

  String getImage(){
    return "https://image.tmdb.org/t/p/w500/"+this.poster_path;
  }
}