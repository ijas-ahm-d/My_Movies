import 'package:dartz/dartz.dart';
import 'package:my_movies/domain/core/failures/main_failure.dart';
import 'package:my_movies/domain/movies_resp/models/movies_resp.dart';

abstract class MovieService {
 
  Future<Either<MainFailure, MoviesResp>> getMovieData({int page});
}
