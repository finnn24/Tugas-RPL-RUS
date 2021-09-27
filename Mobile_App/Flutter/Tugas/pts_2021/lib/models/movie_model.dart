class MovieModel {
  final int id;
  final String original_language;
  final String title;
  final String overview;
  final double popularity;
  final String poster_path;
  final String backdrop_path;
  final String relase_date;
  final int vote_count;
  final double vote_average;

  MovieModel({
    required this.id,
    required this.original_language,
    required this.title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.relase_date,
    required this.vote_count,
    required this.vote_average,
    required this.backdrop_path,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      original_language: json['original_language'],
      title: json['title'],
      overview: json['overview'],
      popularity: json['popularity'],
      poster_path: json['poster_path'],
      relase_date: json['release_date'],
      vote_average: json['vote_average'].toDouble(),
      vote_count: json['vote_count'],
      backdrop_path: json['backdrop_path'],
    );
  }
}
