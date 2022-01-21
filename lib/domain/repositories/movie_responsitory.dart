import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/domain/entities/app_error.dart';
import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';

abstract class MovieReposity {
  Future<Either<AppError, List<MovieEntity>>> getTrending();
}
