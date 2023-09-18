import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movies/domain/core/failures/main_failure.dart';
import 'package:my_movies/domain/data_provider/response/api_response.dart';
import 'package:my_movies/domain/details_resp/details_service.dart';
import 'package:my_movies/domain/details_resp/models/details_resp.dart';
import 'package:injectable/injectable.dart';
part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailsService _detailsService;
  int? _movieId;
  int? get movieId => _movieId;
  DetailsBloc(this._detailsService) : super(DetailsState.initial()) {
    on<GetDetailsData>(
      (event, emit) async {
        emit(
          DetailsState(
            details: [],
            isLoading: true,
            hasError: false,
            id: _movieId ?? 346698,
          ),
        );
        final result =
            await _detailsService.getDetailsData(id: _movieId ?? 346698);
        final newState = result.fold(
          (MainFailure failure) {
            ApiResponse.error(failure.toString());
            return DetailsState(
              details: [],
              isLoading: false,
              hasError: true,
              id: _movieId ?? 346698,
            );
          },
          (DetailsResp resp) {
            return DetailsState(
              details: [resp],
              isLoading: false,
              hasError: false,
              id: _movieId ?? 346698,
            );
          },
        );
        emit(newState);
      },
    );
    on<ChangeDetailsId>(
      (event, emit) async {
        _movieId = event.newId;
        final result = await _detailsService.getDetailsData(
          id: _movieId ?? 346698,
        );
        final newState = result.fold(
          (MainFailure failure) {
            ApiResponse.error(failure.toString());
            return DetailsState(
              details: [],
              isLoading: false,
              hasError: true,
              id: _movieId ?? 346698,
            );
          },
          (DetailsResp resp) {
            return DetailsState(
              details: [resp],
              isLoading: false,
              hasError: false,
              id: _movieId ?? 346698,
            );
          },
        );
        emit(newState);
      },
    );
  }
}
