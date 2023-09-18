// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeMovies,
    required TResult Function(int newPageIndex) changePageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeMovies,
    TResult? Function(int newPageIndex)? changePageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeMovies,
    TResult Function(int newPageIndex)? changePageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeMovies value) getHomeMovies,
    required TResult Function(ChangePageIndex value) changePageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeMovies value)? getHomeMovies,
    TResult? Function(ChangePageIndex value)? changePageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeMovies value)? getHomeMovies,
    TResult Function(ChangePageIndex value)? changePageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res, MoviesEvent>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res, $Val extends MoviesEvent>
    implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeMoviesCopyWith<$Res> {
  factory _$$GetHomeMoviesCopyWith(
          _$GetHomeMovies value, $Res Function(_$GetHomeMovies) then) =
      __$$GetHomeMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeMoviesCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$GetHomeMovies>
    implements _$$GetHomeMoviesCopyWith<$Res> {
  __$$GetHomeMoviesCopyWithImpl(
      _$GetHomeMovies _value, $Res Function(_$GetHomeMovies) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeMovies with DiagnosticableTreeMixin implements GetHomeMovies {
  const _$GetHomeMovies();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesEvent.getHomeMovies()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MoviesEvent.getHomeMovies'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeMovies,
    required TResult Function(int newPageIndex) changePageIndex,
  }) {
    return getHomeMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeMovies,
    TResult? Function(int newPageIndex)? changePageIndex,
  }) {
    return getHomeMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeMovies,
    TResult Function(int newPageIndex)? changePageIndex,
    required TResult orElse(),
  }) {
    if (getHomeMovies != null) {
      return getHomeMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeMovies value) getHomeMovies,
    required TResult Function(ChangePageIndex value) changePageIndex,
  }) {
    return getHomeMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeMovies value)? getHomeMovies,
    TResult? Function(ChangePageIndex value)? changePageIndex,
  }) {
    return getHomeMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeMovies value)? getHomeMovies,
    TResult Function(ChangePageIndex value)? changePageIndex,
    required TResult orElse(),
  }) {
    if (getHomeMovies != null) {
      return getHomeMovies(this);
    }
    return orElse();
  }
}

abstract class GetHomeMovies implements MoviesEvent {
  const factory GetHomeMovies() = _$GetHomeMovies;
}

/// @nodoc
abstract class _$$ChangePageIndexCopyWith<$Res> {
  factory _$$ChangePageIndexCopyWith(
          _$ChangePageIndex value, $Res Function(_$ChangePageIndex) then) =
      __$$ChangePageIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int newPageIndex});
}

/// @nodoc
class __$$ChangePageIndexCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$ChangePageIndex>
    implements _$$ChangePageIndexCopyWith<$Res> {
  __$$ChangePageIndexCopyWithImpl(
      _$ChangePageIndex _value, $Res Function(_$ChangePageIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPageIndex = null,
  }) {
    return _then(_$ChangePageIndex(
      null == newPageIndex
          ? _value.newPageIndex
          : newPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageIndex
    with DiagnosticableTreeMixin
    implements ChangePageIndex {
  const _$ChangePageIndex(this.newPageIndex);

  @override
  final int newPageIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesEvent.changePageIndex(newPageIndex: $newPageIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesEvent.changePageIndex'))
      ..add(DiagnosticsProperty('newPageIndex', newPageIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageIndex &&
            (identical(other.newPageIndex, newPageIndex) ||
                other.newPageIndex == newPageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageIndexCopyWith<_$ChangePageIndex> get copyWith =>
      __$$ChangePageIndexCopyWithImpl<_$ChangePageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeMovies,
    required TResult Function(int newPageIndex) changePageIndex,
  }) {
    return changePageIndex(newPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeMovies,
    TResult? Function(int newPageIndex)? changePageIndex,
  }) {
    return changePageIndex?.call(newPageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeMovies,
    TResult Function(int newPageIndex)? changePageIndex,
    required TResult orElse(),
  }) {
    if (changePageIndex != null) {
      return changePageIndex(newPageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeMovies value) getHomeMovies,
    required TResult Function(ChangePageIndex value) changePageIndex,
  }) {
    return changePageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeMovies value)? getHomeMovies,
    TResult? Function(ChangePageIndex value)? changePageIndex,
  }) {
    return changePageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeMovies value)? getHomeMovies,
    TResult Function(ChangePageIndex value)? changePageIndex,
    required TResult orElse(),
  }) {
    if (changePageIndex != null) {
      return changePageIndex(this);
    }
    return orElse();
  }
}

abstract class ChangePageIndex implements MoviesEvent {
  const factory ChangePageIndex(final int newPageIndex) = _$ChangePageIndex;

  int get newPageIndex;
  @JsonKey(ignore: true)
  _$$ChangePageIndexCopyWith<_$ChangePageIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesState {
  List<MovieData> get moviesList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
  @useResult
  $Res call(
      {List<MovieData> moviesList,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      int currentPage});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesList = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      moviesList: null == moviesList
          ? _value.moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<MovieData>,
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $MoviesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MovieData> moviesList,
      bool isLoading,
      bool hasError,
      String? errorMessage,
      int currentPage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesList = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
    Object? currentPage = null,
  }) {
    return _then(_$_Initial(
      moviesList: null == moviesList
          ? _value._moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<MovieData>,
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(
      {required final List<MovieData> moviesList,
      required this.isLoading,
      required this.hasError,
      this.errorMessage,
      required this.currentPage})
      : _moviesList = moviesList;

  final List<MovieData> _moviesList;
  @override
  List<MovieData> get moviesList {
    if (_moviesList is EqualUnmodifiableListView) return _moviesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moviesList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? errorMessage;
  @override
  final int currentPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesState(moviesList: $moviesList, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, currentPage: $currentPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesState'))
      ..add(DiagnosticsProperty('moviesList', moviesList))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('currentPage', currentPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._moviesList, _moviesList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_moviesList),
      isLoading,
      hasError,
      errorMessage,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements MoviesState {
  const factory _Initial(
      {required final List<MovieData> moviesList,
      required final bool isLoading,
      required final bool hasError,
      final String? errorMessage,
      required final int currentPage}) = _$_Initial;

  @override
  List<MovieData> get moviesList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
