import 'package:dartz/dartz.dart';
import 'package:my_movies/domain/core/failures/main_failure.dart';
import 'package:my_movies/domain/details_resp/models/details_resp.dart';

abstract class DetailsService {
  Future<Either<MainFailure, DetailsResp>> getDetailsData({int id});
}
