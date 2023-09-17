import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
class HomeMovies with _$HomeMovies {
  const factory HomeMovies({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _HomeMovies;

  factory HomeMovies.fromJson(Map<String, dynamic> json) =>
      _$HomeMoviesFromJson(json);
}
