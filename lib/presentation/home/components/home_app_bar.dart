

import 'package:flutter/material.dart';

import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appColor,
      elevation: 0,
      leading: const Icon(
        Icons.person,
        color: AppColors.kwhite,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello,",
            style: TextStyles.textstyles(14, FontWeight.bold, AppColors.kwhite),
          ),
          Text(
            "Person",
            style: TextStyles.textstyles(21, FontWeight.bold, AppColors.kwhite),
          ),
        ],
      ),
    );
  }
}
