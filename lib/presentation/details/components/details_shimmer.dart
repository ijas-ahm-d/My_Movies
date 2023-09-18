import 'package:flutter/material.dart';
import 'package:my_movies/core/space.dart';
import 'package:my_movies/presentation/components/common_shimmer.dart';

class DetailsShimmer extends StatelessWidget {
  const DetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        CommonShimmer.rectangular(
          height: size.height * 0.25,
        ),
        const SpaceWH(height: 10),
        CommonShimmer.rectangular(
          width: 100,
          shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: size.height * 0.025,
        ),
        const SpaceWH(height: 10),
        CommonShimmer.rectangular(
          width: 100,
          shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: size.height * 0.015,
        ),
        const SpaceWH(height: 40),
        CommonShimmer.rectangular(
          width: 300,
          shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: size.height * 0.015,
        ),
        const SpaceWH(height: 10),
        CommonShimmer.rectangular(
          width: 300,
          shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: size.height * 0.015,
        ),
        const SpaceWH(height: 10),
        CommonShimmer.rectangular(
          width: 300,
          shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: size.height * 0.015,
        ),
        const SpaceWH(height: 10),
        CommonShimmer.rectangular(
          width: 300,
          shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          height: size.height * 0.015,
        ),
      ],
    );
  }
}
