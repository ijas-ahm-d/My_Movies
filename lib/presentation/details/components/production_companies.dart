import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies/application/details/details_bloc.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/space.dart';

class ProductionCompanies extends StatelessWidget {
  const ProductionCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Production Companies",
          style: TextStyle(
            color: AppColors.kBlack,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SpaceWH.kHeight5,
        BlocBuilder<DetailsBloc, DetailsState>(
          builder: (context, state) {
            return SizedBox(
              height: 30,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                scrollDirection: Axis.horizontal,
                itemCount: state.details[0].productionCompanies!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    "-${state.details[0].productionCompanies![index].name}",
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
