import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailures({required String str}) = _ClientFailure;
  const factory MainFailure.serverFailures({required String str}) = _ServerFailure;
}
