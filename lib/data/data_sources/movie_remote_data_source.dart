import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_app_clean_arch/data/core/api_client.dart';
import 'package:movie_app_clean_arch/data/core/api_constants.dart';
import 'package:movie_app_clean_arch/data/models/movie_model.dart';
import 'package:movie_app_clean_arch/data/models/movies_result_model.dart';
import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getPlayingNow();
  Future<List<MovieModel>> getComingSoon();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _client;
  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieModel>> getTrending() async {
    // TODO: implement getTrending

    final response = await _client.get('trending/movie/day');

    final movies = MoviesResultModel.fromJson(response).movies;

    return movies;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    // TODO: implement getPopular

    final response = await _client.get('movie/popular');

    final movies = MoviesResultModel.fromJson(response).movies;

    return movies;
  }

  @override
  Future<List<MovieModel>> getComingSoon() async {
    // TODO: implement getComingSoon

    final response = await _client.get('movie/upcoming');

    final movies = MoviesResultModel.fromJson(response).movies;

    return movies;
  }

  @override
  Future<List<MovieModel>> getPlayingNow() async {
    // TODO: implement getPlayingNow

    final response = await _client.get('movie/now_playing');

    final movies = MoviesResultModel.fromJson(response).movies;

    return movies;
  }
}
