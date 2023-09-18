import 'package:flutter/material.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/text_styles.dart';

class SpecificationCard extends StatelessWidget {
  final String title;
  final String specific;
  const SpecificationCard({
    super.key,
    required this.title,
    required this.specific,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 195, 55, 100),
            Color.fromARGB(255, 29, 38, 113),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyles.textstyles(
                15,
                FontWeight.w400,
                Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              specific,
              style: TextStyles.textstyles(
                18,
                FontWeight.w500,
                AppColors.kwhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
