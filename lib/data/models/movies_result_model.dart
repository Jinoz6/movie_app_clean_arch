import 'package:movie_app_clean_arch/data/models/movie_model.dart';

class MoviesResultModel {
  late List<MovieModel> movies;

  MoviesResultModel({this.movies = const []});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = <MovieModel>[];
      json['results'].forEach((v) {
        movies.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.movies != null) {
      data['results'] = this.movies.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
