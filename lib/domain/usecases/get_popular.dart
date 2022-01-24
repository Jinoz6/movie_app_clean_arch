import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/domain/entities/app_error.dart';
import 'package:movie_app_clean_arch/domain/entities/movie_entity.dart';
import 'package:movie_app_clean_arch/domain/entities/no_params.dart';
import 'package:movie_app_clean_arch/domain/repositories/movie_responsitory.dart';
import 'package:movie_app_clean_arch/domain/usecases/usecase.dart';

class GetPopular extends UseCase<List<MovieEntity>, NoParams> {
  final MovieReposity reposity;

  GetPopular(this.reposity);

  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await reposity.getPopular();
  }
}
