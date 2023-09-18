part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required List<DetailsResp> details,
    required bool isLoading,
    required bool hasError,
    required int id,
  }) = _Initial;

  factory DetailsState.initial() => const DetailsState(
       details: [],
        isLoading: false,
        hasError: false,
        id: 346698,
      );
}
