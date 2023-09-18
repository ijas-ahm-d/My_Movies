import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies/application/movies/movies_bloc.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/presentation/home/components/home_app_bar.dart';
import 'package:my_movies/presentation/home/components/home_pagination.dart';
import 'package:my_movies/presentation/home/components/home_shimmer.dart';
import 'package:my_movies/presentation/home/components/movie_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MoviesBloc>(context).add(const GetHomeMovies());
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kBlack,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.07),
          child: const HomeAppBar()),
      body: Column(
        children: [
          const HomePagination(),
          Expanded(
            child: BlocBuilder<MoviesBloc, MoviesState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const HomeShimmer();
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
                  return ListView.builder(
                    physics: const ScrollPhysics(),
                    itemCount: state.moviesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final film = state.moviesList[index];
                      return MovieCard(
                        film: film,
                        index: index,
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
