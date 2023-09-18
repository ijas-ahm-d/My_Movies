import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/constants.dart';
import 'package:my_movies/core/routes/navigations.dart';
import 'package:my_movies/domain/movies_resp/models/movies_resp.dart';
import 'package:my_movies/presentation/components/special_button.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    
   
    required this.film,
    required this.index,
  });
  final int index;


  final MovieData film;

  @override
  Widget build(BuildContext context) {
     final img = "$imgAppentUrl${film.posterPath}";
    final DateTime dateTime = DateTime.parse(film.releaseDate ?? "2023-09-18");
    final String year = DateFormat('y').format(dateTime);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Navigations.detailsScreen, arguments: {
            'newId': film.id ?? 346698,
            'index': index,
          });

        },
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
                border: Border.all(color: AppColors.kBlack, width: 1),
                childIcon: SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "${film.originalTitle}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSerif(
                          color: AppColors.kBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "($year)",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSerif(
                          color: AppColors.kBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${film.overview}',
                        overflow: TextOverflow.fade,
                        maxLines: 4,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.notoSerif(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
