import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/text_styles.dart';
import 'package:my_movies/presentation/components/special_button.dart';
import 'package:my_movies/presentation/details/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
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
              style:
                  TextStyles.textstyles(14, FontWeight.bold, AppColors.kwhite),
            ),
            Text(
              "Person",
              style:
                  TextStyles.textstyles(21, FontWeight.bold, AppColors.kwhite),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        physics: const ScrollPhysics(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailScreen();
                    },
                  ),
                );
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
                          child: Image.asset(
                            "assets/images/ijas.jpg",
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
                              "RAJAMANIKYAM",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSerif(
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "(2018)",
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
                              "charming thief and a band of unlikely adventurers undertake an epic heist to retrieve a lost relic, but things go dangerously awry when they run afoul of the wrong people.",
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
        },
      ),
    );
  }
}
