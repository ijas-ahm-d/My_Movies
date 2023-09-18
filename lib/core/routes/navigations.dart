import 'package:flutter/material.dart';
import 'package:my_movies/presentation/details/detail_screen.dart';
import 'package:my_movies/presentation/home/home_screen.dart';
import 'package:my_movies/presentation/splash/splash_screen.dart';

class Navigations {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static const splashScreen = "/splash_screen";
  static const homeScreen = "/home_screen";
  static const detailsScreen = "/details_Screen";

  static Map<String, Widget Function(BuildContext)> routes() {
    Map<String, Widget Function(BuildContext)> routes = {
      "/splash_screen": (context) => const SplashScreen(),
      "/home_screen": (context) => const HomeScreen(),
      "/details_Screen": (context) {
        final args =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
        final newId = args?['newId'] as int?;
        final index = args?['index'] as int?;

        return DetailScreen(newId: newId, index: index);
      }
    };
    return routes;
  }
}
