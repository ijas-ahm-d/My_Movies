import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies/application/movies/movies_bloc.dart';
import 'package:my_movies/core/colors.dart';
import 'package:number_pagination/number_pagination.dart';

class HomePagination extends StatelessWidget {
  const HomePagination({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NumberPagination(
            pageInit: 1,
            threshold: 1,
            fontSize: 12,
            onPageChanged: (int pageNumber) {
              BlocProvider.of<MoviesBloc>(context).add(
                ChangePageIndex(pageNumber),
              );
            },
            pageTotal: 500,
            colorPrimary: AppColors.kBlack,
            colorSub: AppColors.kwhite,
          )
        ],
      ),
    );
  }
}
