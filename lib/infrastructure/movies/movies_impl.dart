import 'dart:developer';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:my_movies/domain/core/api_end_points.dart';
import 'package:my_movies/domain/core/failures/main_failure.dart';
import 'package:my_movies/domain/data_provider/app_exceptions.dart';
import 'package:my_movies/domain/movies_resp/models/movies_resp.dart';
import 'package:my_movies/domain/movies_resp/movies_service.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: MovieService)
class MoviesImplementation implements MovieService {
  @override
  Future<Either<MainFailure, MoviesResp>> getMovieData({int? page}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.moviesWithPage(page));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("success");
        final result = MoviesResp.fromJson(response.data);
        return Right(result);
      } else {
        log("failed");
        return Left(MainFailure.serverFailures(str: response.toString()));
      }
    } on AppExceptions catch (e) {
      return left(
        MainFailure.clientFailures(str: e.toString()),
      );
    } on SocketException catch (_) {
      return Left(
        MainFailure.clientFailures(str: _.toString()),
      );
    } on DioException catch (e) {
      log(e.toString());

      return Left(MainFailure.clientFailures(str: e.toString()));
    } catch (e) {
      log(e.toString());
      return Left(MainFailure.clientFailures(str: e.toString()));
    }
  }
}
