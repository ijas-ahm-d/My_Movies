part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.getDetailsData() = GetDetailsData;
    const factory DetailsEvent.changeDetailsId(int newId) = ChangeDetailsId;

  
}