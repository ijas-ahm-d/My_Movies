import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movies/core/colors.dart';
import 'package:my_movies/core/providers/providers_list.dart';
import 'package:my_movies/core/routes/navigations.dart';
import 'package:my_movies/domain/core/dependency_injection/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: ProviderList.provider,
      child: MaterialApp(
        title: 'MY MOVIES',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.robotoMono().fontFamily,
          scaffoldBackgroundColor: AppColors.kwhite,
          useMaterial3: true,
        ),
        routes: Navigations.routes(),
        initialRoute: Navigations.splashScreen,
        navigatorKey: Navigations.navigatorKey,
      ),
    );
  }
}
