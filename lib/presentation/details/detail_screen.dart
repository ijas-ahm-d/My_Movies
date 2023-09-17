import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/text_styles.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: AppColors.kwhite,
        ),
        title: Text(
          "RAJAMANIKYAM",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: GoogleFonts.notoSerif(
            color: AppColors.kwhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 195, 55, 100),
                Color.fromARGB(255, 29, 38, 113),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/sample.jpg"),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: "Language: ",
                        style: TextStyle(color: AppColors.kBlack),
                        children: [
                          TextSpan(
                              text: "EN",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Media Type: ",
                        style: TextStyle(color: AppColors.kBlack),
                        children: [
                          TextSpan(
                              text: "Movie",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "About",
                  style: TextStyle(color: AppColors.kBlack),
                ),
                const SizedBox(height: 10),
                Text(
                  "Ruby Gillman, a sweet and awkward high school student, discovers she's a direct descendant of the warrior kraken queens. The kraken are sworn to protect the oceans of the world against the vain, power-hungry mermaids. Destined to inherit the throne from her commanding grandmother, Ruby must use her newfound powers to protect those she loves most.",
                  style: TextStyles.textstyles(
                    15,
                    FontWeight.w400,
                    Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SpecificationCard(
                          title: "Popularity",
                          specific: "73.134",
                        ),
                        SpecificationCard(
                          title: "vote average",
                          specific: "5.909",
                        ),
                        SpecificationCard(
                          title: "vote count",
                          specific: "93",
                        ),
                        SpecificationCard(
                          title: "video",
                          specific: "false",
                        ),
                        SpecificationCard(
                          title: "Adult",
                          specific: "false",
                        ),
                        SizedBox(width: 20)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
