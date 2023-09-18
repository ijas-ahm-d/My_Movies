import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies/application/details/details_bloc.dart';
import 'package:my_movies/application/movies/movies_bloc.dart';
import 'package:my_movies/domain/core/dependency_injection/injectable.dart';
import 'package:provider/single_child_widget.dart';

class ProviderList {
  static List<SingleChildWidget> provider = [
    BlocProvider(
      create: (context) => getIt<MoviesBloc>(),
    ),
    BlocProvider(
      create: (context) => getIt<DetailsBloc>(),
    ),
  ];
}
