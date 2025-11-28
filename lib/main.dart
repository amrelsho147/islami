import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/Chapter_Details.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/Hadeth_tap/Hadeth_details.dart';
import 'package:islami/ui/HomeScreen/homeScreen.dart';
import 'package:islami/ui/SplashScreen/splash_Screen.dart';
import 'package:islami/ui/theam/Theam.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MyTheamData.lightTheam,
        darkTheme:MyTheamData.darkTheam,
        themeMode:ThemeMode.light,

      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName : (_)=>splashScreen(),
        HomeScreen.routeName  : (_)=>HomeScreen(),
        ChapterDetails.routeName : (_)=> ChapterDetails(),
       HadethDetails.routeName  : (_)=> HadethDetails(),
    },
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),

    );
  }
}
