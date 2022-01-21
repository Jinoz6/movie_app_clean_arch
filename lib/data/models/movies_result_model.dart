import 'package:movie_app_clean_arch/data/models/movie_model.dart';

class MoviesResultModel {

  List<MovieModel>? results;

  MoviesResultModel({this.results});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {

    if (json['results'] != null) {
      results = <MovieModel>[];
      json['results'].forEach((v) {
        results!.add(MovieModel.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {

    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
