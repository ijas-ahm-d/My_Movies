part of 'movies_bloc.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    required List<MovieData> moviesList,
    required bool isLoading,
    required bool hasError,
    required int currentPage,
  }) = _Initial;

  factory MoviesState.initial() => const MoviesState(
        moviesList: [],
        isLoading: false,
        hasError: false,
        currentPage: 1,
      );
}
