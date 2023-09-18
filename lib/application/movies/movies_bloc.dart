import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movies/domain/core/failures/main_failure.dart';
import 'package:my_movies/domain/data_provider/response/api_response.dart';
import 'package:my_movies/domain/movies_resp/models/movies_resp.dart';
import 'package:my_movies/domain/movies_resp/movies_service.dart';
import 'package:injectable/injectable.dart';
part 'movies_event.dart';
part 'movies_state.dart';
part 'movies_bloc.freezed.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MovieService _moviesService;
  int? _currentPage;
  int? get currentPage => _currentPage;
  MoviesBloc(this._moviesService) : super(MoviesState.initial()) {
    // Get Home Movies Data
    on<GetHomeMovies>(
      (event, emit) async {
// Loading send
        emit(
          MoviesState(
            moviesList: [],
            isLoading: true,
            hasError: false,
            currentPage: _currentPage ?? 1,
          ),
        );
//  get data from remote
        final result =
            await _moviesService.getMovieData(page: _currentPage ?? 1);

// data to state

        final newState = result.fold(
          (MainFailure failure) {
            ApiResponse.error(failure.toString());
            return MoviesState(
              moviesList: [],
              isLoading: false,
              hasError: true,
              currentPage: _currentPage ?? 1,
            );
          },
          (MoviesResp resp) {
            return MoviesState(
              moviesList: resp.results,
              isLoading: false,
              hasError: false,
              currentPage: _currentPage ?? 1,
            );
          },
        );
        emit(newState);
      },
    );

    on<ChangePageIndex>((event, emit) async {
      _currentPage = event.newPageIndex;

      final result = await _moviesService.getMovieData(page: _currentPage ?? 1);
      final newState = result.fold(
        (MainFailure failure) {
          ApiResponse.error(failure.toString());
          return MoviesState(
            moviesList: [],
            isLoading: false,
            hasError: true,
            currentPage: _currentPage ?? 1,
          );
        },
        (MoviesResp resp) {
          return MoviesState(
            moviesList: resp.results,
            isLoading: false,
            hasError: false,
            currentPage: _currentPage ?? 1,
          );
        },
      );
      emit(newState);
    });
  }
}
