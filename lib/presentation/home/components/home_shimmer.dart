import 'package:flutter/material.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/space.dart';
import 'package:my_movies/presentation/components/common_shimmer.dart';
import 'package:my_movies/presentation/components/special_button.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        physics: const ScrollPhysics(),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.kwhite,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black38,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SpecialButton(
                    border: Border.all(
                      color: AppColors.kBlack,
                      width: 1,
                    ),
                    childIcon: SizedBox(
                      height: size.height * 0.1,
                      width: size.width * 0.15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CommonShimmer.rectangular(
                          height: size.height * 0.08,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        children: [
                          CommonShimmer.rectangular(
                            height: size.height * 0.025,
                            width: size.width * 0.4,
                          ),
                          SpaceWH.kHeight5,
                          CommonShimmer.rectangular(
                            height: size.height * 0.02,
                            width: size.width * 0.15,
                          ),
                          SpaceWH.kHeight5,
                          CommonShimmer.rectangular(
                            height: size.height * 0.08,
                            width: size.width * 0.7,
                            shapeBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
