import 'package:my_movies/core/constants.dart';
import 'package:my_movies/infrastructure/api_key.dart';

class ApiEndPoints {
  static const movies = "$kBaseURL/movie/day?language=en-US&api_key=$apikey";
}
