import 'package:json_annotation/json_annotation.dart';
part 'movies_resp.g.dart';

@JsonSerializable()
class MoviesResp {

  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<MovieData> results;

  MoviesResp({this.page, this.results=const []});

  factory MoviesResp.fromJson(Map<String, dynamic> json) {
    return _$MoviesRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoviesRespToJson(this);
}
@JsonSerializable()
class MovieData {
  @JsonKey(name: 'adult')
  bool? adult;

  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'media_type')
  String? mediaType;

  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;

  @JsonKey(name: 'popularity')
  double? popularity;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'video')
  bool? video;

  @JsonKey(name: 'vote_average')
  double? voteAverage;

  @JsonKey(name: 'vote_count')
  int? voteCount;

  MovieData({
    this.adult,
    this.backdropPath,
    this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) {
    return _$MovieDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieDataToJson(this);
}
