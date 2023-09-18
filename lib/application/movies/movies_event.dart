part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.getHomeMovies() = GetHomeMovies;
  const factory MoviesEvent.changePageIndex(int newPageIndex) = ChangePageIndex;
}
