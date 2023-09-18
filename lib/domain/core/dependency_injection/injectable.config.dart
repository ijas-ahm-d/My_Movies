// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_movies/application/details/details_bloc.dart' as _i8;
import 'package:my_movies/application/movies/movies_bloc.dart' as _i7;
import 'package:my_movies/domain/details_resp/details_service.dart' as _i3;
import 'package:my_movies/domain/movies_resp/movies_service.dart' as _i5;
import 'package:my_movies/infrastructure/details.dart/details_impl.dart' as _i4;
import 'package:my_movies/infrastructure/movies/movies_impl.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DetailsService>(() => _i4.DetailsImplementation());
    gh.lazySingleton<_i5.MovieService>(() => _i6.MoviesImplementation());
    gh.factory<_i7.MoviesBloc>(() => _i7.MoviesBloc(gh<_i5.MovieService>()));
    gh.factory<_i8.DetailsBloc>(
        () => _i8.DetailsBloc(gh<_i3.DetailsService>()));
    return this;
  }
}
