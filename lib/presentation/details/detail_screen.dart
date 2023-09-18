import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies/application/details/details_bloc.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/presentation/details/components/details.dart';
import 'package:my_movies/presentation/details/components/details_shimmer.dart';

class DetailScreen extends StatelessWidget {
  final int? newId;
  final int? index;
  const DetailScreen({
    super.key,required this.newId,required this.index,
     
     
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DetailsBloc>(context).add(ChangeDetailsId(newId??346698));
    });
    return Scaffold(
      body: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          return SizedBox(
            child: ListView.builder(
              itemCount: state.details.length,
              itemBuilder: (BuildContext context, int index) {
                final film = state.details[index];
                final img = film.backdropPath;
                if (state.isLoading) {
                  return const DetailsShimmer();
                } else if (state.hasError) {
                   return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Center(
                          child: Text(
                        state.errorMessage.toString(),
                        style: const TextStyle(
                          color: AppColors.kwhite,
                        ),
                      )),
                    );
                } else {
                  return Details(film: film, img: img!);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
