import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_movies/domain/core/api_end_points.dart';
import 'package:my_movies/domain/core/failures/main_failure.dart';
import 'package:my_movies/domain/data_provider/response/api_response.dart';
import 'package:my_movies/domain/details_resp/details_service.dart';
import 'package:my_movies/domain/details_resp/models/details_resp.dart';

@LazySingleton(as: DetailsService)
class DetailsImplementation implements DetailsService {
  @override
  Future<Either<MainFailure, DetailsResp>> getDetailsData({int? id}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.detailsWithId(id));
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("success");
        final result = DetailsResp.fromJson(response.data);
        return Right(result);
      } else {
        log("failed");
        return Left(MainFailure.serverFailures(str: response.toString()));
      }
    } on SocketException catch (_) {
      return Left(
        MainFailure.clientFailures(str: _.toString()),
      );
    } on DioException catch (e) {
      ApiResponse.error(e.toString());

      return Left(MainFailure.clientFailures(str: e.toString()));
    } catch (e) {
      log(e.toString());
      return Left(MainFailure.clientFailures(str: e.toString()));
    }
  }
}
