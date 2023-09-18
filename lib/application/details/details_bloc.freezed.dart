// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetailsData,
    required TResult Function(int newId) changeDetailsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetailsData,
    TResult? Function(int newId)? changeDetailsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetailsData,
    TResult Function(int newId)? changeDetailsId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDetailsData value) getDetailsData,
    required TResult Function(ChangeDetailsId value) changeDetailsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDetailsData value)? getDetailsData,
    TResult? Function(ChangeDetailsId value)? changeDetailsId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDetailsData value)? getDetailsData,
    TResult Function(ChangeDetailsId value)? changeDetailsId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res, DetailsEvent>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res, $Val extends DetailsEvent>
    implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDetailsDataCopyWith<$Res> {
  factory _$$GetDetailsDataCopyWith(
          _$GetDetailsData value, $Res Function(_$GetDetailsData) then) =
      __$$GetDetailsDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDetailsDataCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$GetDetailsData>
    implements _$$GetDetailsDataCopyWith<$Res> {
  __$$GetDetailsDataCopyWithImpl(
      _$GetDetailsData _value, $Res Function(_$GetDetailsData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDetailsData implements GetDetailsData {
  const _$GetDetailsData();

  @override
  String toString() {
    return 'DetailsEvent.getDetailsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDetailsData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetailsData,
    required TResult Function(int newId) changeDetailsId,
  }) {
    return getDetailsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetailsData,
    TResult? Function(int newId)? changeDetailsId,
  }) {
    return getDetailsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetailsData,
    TResult Function(int newId)? changeDetailsId,
    required TResult orElse(),
  }) {
    if (getDetailsData != null) {
      return getDetailsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDetailsData value) getDetailsData,
    required TResult Function(ChangeDetailsId value) changeDetailsId,
  }) {
    return getDetailsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDetailsData value)? getDetailsData,
    TResult? Function(ChangeDetailsId value)? changeDetailsId,
  }) {
    return getDetailsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDetailsData value)? getDetailsData,
    TResult Function(ChangeDetailsId value)? changeDetailsId,
    required TResult orElse(),
  }) {
    if (getDetailsData != null) {
      return getDetailsData(this);
    }
    return orElse();
  }
}

abstract class GetDetailsData implements DetailsEvent {
  const factory GetDetailsData() = _$GetDetailsData;
}

/// @nodoc
abstract class _$$ChangeDetailsIdCopyWith<$Res> {
  factory _$$ChangeDetailsIdCopyWith(
          _$ChangeDetailsId value, $Res Function(_$ChangeDetailsId) then) =
      __$$ChangeDetailsIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int newId});
}

/// @nodoc
class __$$ChangeDetailsIdCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$ChangeDetailsId>
    implements _$$ChangeDetailsIdCopyWith<$Res> {
  __$$ChangeDetailsIdCopyWithImpl(
      _$ChangeDetailsId _value, $Res Function(_$ChangeDetailsId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newId = null,
  }) {
    return _then(_$ChangeDetailsId(
      null == newId
          ? _value.newId
          : newId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeDetailsId implements ChangeDetailsId {
  const _$ChangeDetailsId(this.newId);

  @override
  final int newId;

  @override
  String toString() {
    return 'DetailsEvent.changeDetailsId(newId: $newId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDetailsId &&
            (identical(other.newId, newId) || other.newId == newId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDetailsIdCopyWith<_$ChangeDetailsId> get copyWith =>
      __$$ChangeDetailsIdCopyWithImpl<_$ChangeDetailsId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetailsData,
    required TResult Function(int newId) changeDetailsId,
  }) {
    return changeDetailsId(newId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetailsData,
    TResult? Function(int newId)? changeDetailsId,
  }) {
    return changeDetailsId?.call(newId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetailsData,
    TResult Function(int newId)? changeDetailsId,
    required TResult orElse(),
  }) {
    if (changeDetailsId != null) {
      return changeDetailsId(newId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDetailsData value) getDetailsData,
    required TResult Function(ChangeDetailsId value) changeDetailsId,
  }) {
    return changeDetailsId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDetailsData value)? getDetailsData,
    TResult? Function(ChangeDetailsId value)? changeDetailsId,
  }) {
    return changeDetailsId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDetailsData value)? getDetailsData,
    TResult Function(ChangeDetailsId value)? changeDetailsId,
    required TResult orElse(),
  }) {
    if (changeDetailsId != null) {
      return changeDetailsId(this);
    }
    return orElse();
  }
}

abstract class ChangeDetailsId implements DetailsEvent {
  const factory ChangeDetailsId(final int newId) = _$ChangeDetailsId;

  int get newId;
  @JsonKey(ignore: true)
  _$$ChangeDetailsIdCopyWith<_$ChangeDetailsId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsState {
  List<DetailsResp> get details => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call(
      {List<DetailsResp> details,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      int id});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsResp>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DetailsResp> details,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      int id});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? id = null,
  }) {
    return _then(_$_Initial(
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsResp>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<DetailsResp> details,
      required this.isLoading,
      required this.hasError,
      this.errorMessage,
      required this.id})
      : _details = details;

  final List<DetailsResp> _details;
  @override
  List<DetailsResp> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? errorMessage;
  @override
  final int id;

  @override
  String toString() {
    return 'DetailsState(details: $details, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_details),
      isLoading,
      hasError,
      errorMessage,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DetailsState {
  const factory _Initial(
      {required final List<DetailsResp> details,
      required final bool isLoading,
      required final bool hasError,
      final String? errorMessage,
      required final int id}) = _$_Initial;

  @override
  List<DetailsResp> get details;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
