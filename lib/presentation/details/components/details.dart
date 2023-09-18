import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/constants.dart';
import 'package:my_movies/core/space.dart';
import 'package:my_movies/core/text_styles.dart';
import 'package:my_movies/domain/details_resp/models/details_resp.dart';
import 'package:my_movies/presentation/details/components/genres.dart';
import 'package:my_movies/presentation/details/components/production_companies.dart';
import 'package:my_movies/presentation/details/components/production_countries.dart';
import 'package:my_movies/presentation/details/components/specification_card.dart';

class Details extends StatelessWidget {
  final DetailsResp film;
  final String img;
  const Details({super.key, required this.film, required this.img});

  @override
  Widget build(BuildContext context) {
    final DateTime dateTime = DateTime.parse(film.releaseDate ?? "2023-09-18");
    final String year = DateFormat('y').format(dateTime);

    return SizedBox(
      height: 1500,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.kBlack,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 2.9,
              background: Image.network(
                "$imgAppentUrl$img",
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.width * 0.5,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          film.originalTitle ?? "Movie Name",
                          style: TextStyles.textstyles(
                            17,
                            FontWeight.w900,
                            AppColors.kBlack,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          film.tagline ?? "Tagline",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoSerif(
                            color: AppColors.kBlack,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SpaceWH.kHeight5,
                      Center(
                        child: Text(
                          "($year)",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoSerif(
                            color: AppColors.kBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SpaceWH.kHeight10,
                      RichText(
                        text: TextSpan(
                          text: "Runtime: ",
                          style: const TextStyle(color: AppColors.kBlack),
                          children: [
                            TextSpan(
                                text: "${film.runtime} min",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      SpaceWH.kHeight10,
                      RichText(
                        text: TextSpan(
                          text: "Language: ",
                          style: const TextStyle(
                            color: AppColors.kBlack,
                          ),
                          children: [
                            TextSpan(
                              text: film.originalLanguage!.toUpperCase(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SpaceWH.kHeight10,
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
                      SpaceWH.kHeight10,
                      RichText(
                        text: TextSpan(
                          text: "Status: ",
                          style: const TextStyle(
                            color: AppColors.kBlack,
                          ),
                          children: [
                            TextSpan(
                              text: film.status,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SpaceWH.kHeight10,
                      RichText(
                        text: TextSpan(
                          text: "Release Date: ",
                          style: const TextStyle(
                            color: AppColors.kBlack,
                          ),
                          children: [
                            TextSpan(
                              text: film.releaseDate,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      SpaceWH.kHeight10,
                      const Text(
                        "About",
                        style: TextStyle(
                          color: AppColors.kBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        film.overview.toString(),
                        style: TextStyles.textstyles(
                          15,
                          FontWeight.w400,
                          Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Genres(),
                      const ProductionCompanies(),
                      const ProductionCountries(),
                      SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SpecificationCard(
                                title: "Popularity",
                                specific: film.popularity.toString(),
                              ),
                              SpecificationCard(
                                title: "vote average",
                                specific: film.voteAverage.toString(),
                              ),
                              SpecificationCard(
                                title: "vote count",
                                specific: film.voteCount.toString(),
                              ),
                              SpecificationCard(
                                title: "Budget",
                                specific: film.budget.toString(),
                              ),
                              SpecificationCard(
                                title: "video",
                                specific: film.video.toString(),
                              ),
                              SpecificationCard(
                                title: "Adult",
                                specific: film.adult.toString(),
                              ),
                              const SizedBox(width: 20)
                            ],
                          ),
                        ),
                      ),
                      SpaceWH.kHeight20,
                    ],
                  ),
                ),
              ],
            )
          ]))
        ],
      ),
    );
  }
}
