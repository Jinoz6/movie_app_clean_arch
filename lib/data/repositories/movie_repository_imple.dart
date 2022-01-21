import 'package:movie_app_clean_arch/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_app_clean_arch/data/models/movie_model.dart';
import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';
import 'package:movie_app_clean_arch/domain/repositories/movie_responsitory.dart';

class MovieRepositoryImpl extends MovieReposity {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<MovieModel>> getTrending() async {
    // TODO: implement getTrending

    final movies = await remoteDataSource.getTrending();
    print(movies);
    return movies;
  }
}
