import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';

abstract class MovieReposity {
  Future<List<MovieEntity>> getTrending();
}
