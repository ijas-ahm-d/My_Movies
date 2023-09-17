import 'package:my_movies/core/constants.dart';
import 'package:my_movies/infrastructure/api_key.dart';

class ApiEndPoints {
  static String moviesWithPage(int? pageIndex) {
    return "$kBaseURL/trending/movie/day?language=en-US&api_key=$apikey&page=$pageIndex";
  }

  // static const movies =
}
