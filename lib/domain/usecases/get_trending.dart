import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/domain/entities/app_error.dart';
import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';
import 'package:movie_app_clean_arch/domain/repositories/movie_responsitory.dart';

class GetTrending {
  final MovieReposity reposity;

  GetTrending(this.reposity);

  Future<Either<AppError, List<MovieEntity>>> call() async {
    return await reposity.getTrending();
  }
}
