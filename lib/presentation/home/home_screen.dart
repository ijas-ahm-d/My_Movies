import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies/application/movies/movies_bloc.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/constants.dart';
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
        backgroundColor: AppColors.appColor,
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
                    return const Text("error occured");
                  } else {
                    return ListView.builder(
                      physics: const ScrollPhysics(),
                      itemCount: state.moviesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final movie = state.moviesList[index].originalTitle;
                        final film = state.moviesList[index];
                        final img = "$imgAppentUrl${film.posterPath}";
                        log(movie.toString());
                        return MovieCard(img: img, movie: movie, film: film,index: index,);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
