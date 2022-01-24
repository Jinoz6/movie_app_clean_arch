import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_app_clean_arch/data/core/api_client.dart';
import 'package:movie_app_clean_arch/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_app_clean_arch/data/repositories/movie_repository_imple.dart';
import 'package:movie_app_clean_arch/domain/entities/app_error.dart';
import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';
import 'package:movie_app_clean_arch/domain/entities/no_params.dart';
import 'package:movie_app_clean_arch/domain/repositories/movie_responsitory.dart';
import 'package:movie_app_clean_arch/domain/usecases/get_trending.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

void main() async {
  unawaited(getIt.init());

  // ApiClient apiClient = ApiClient(Client());
  // MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  // MovieReposity movieReposity = MovieRepositoryImpl(dataSource);

  // GetTrending getTrending = GetTrending(movieReposity);

  GetTrending getTrending = getIt.getItInstance<GetTrending>();

  final Either<AppError, List<MovieEntity>> eitherResponse =
      await getTrending(NoParams());

  eitherResponse.fold((l) {
    print('error');
    print(l);
  }, (r) {
    print('lsit of the movies');
    print(r);
  });
  //call data from repository
  // movieReposity.getTrending();
  //call data from data source direct
  // dataSource.getTrending();
  // dataSource.getPopular();
  // dataSource.getComingSoon();
  // dataSource.getPlayingNow();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
