import 'package:flutter/material.dart';

class MyTheamData{
  static final Color lightPrimary = Color(0xffB7935f);
  static final Color darkPrimary = Color(0xff141A2E);
  static final Color darkSecondary = Color(0xffFACC1D);
static const bool isDark =false;

  static final ThemeData darkTheam = ThemeData(
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'Messiri',
            fontWeight:FontWeight.bold,
        fontSize: 25,
          color: Colors.white
      ),
          titleSmall: TextStyle(
              fontSize: 25,
              fontFamily: 'Messiri',
            fontWeight: FontWeight.w500
          ),
        bodyMedium: TextStyle(
          fontSize:25 ,
          fontWeight:FontWeight.w500,
          color: Colors.white
        ),
      bodyLarge: TextStyle(
        fontWeight:FontWeight.w400,
        fontSize: 20,
          color: darkSecondary

      )
    ),

    cardTheme: CardThemeData(color: darkPrimary),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:Color(0xffB7935f),
          selectedIconTheme: IconThemeData(
              size: 32,
              color: darkSecondary
          )
      ),

      appBarTheme: AppBarTheme(elevation: 0,backgroundColor: Colors.transparent,
        titleTextStyle:TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.white),
        centerTitle: true,),
      colorScheme:ColorScheme.fromSeed(
          seedColor:lightPrimary,
          primary: darkPrimary
          ,onPrimary: Colors.black,
          secondary:darkSecondary

      )
  );
  static final ThemeData lightTheam = ThemeData(
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'Messiri',
            fontWeight:FontWeight.bold,
        fontSize: 25,
          color: Colors.black
      ),
          titleSmall: TextStyle(
              fontSize: 25,
              fontFamily: 'Messiri',
            fontWeight: FontWeight.w500
          ),
        bodyMedium: TextStyle(
          fontSize:25 ,
          fontWeight:FontWeight.w500,
          color: Colors.black
        ),
      bodyLarge: TextStyle(
        fontWeight:FontWeight.w400,
        fontSize: 20,
          color: Colors.black

      )
    ),

    cardTheme: CardThemeData(color:Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:lightPrimary,
          selectedIconTheme: IconThemeData(
              size: 32,
              color: Colors.black
          )
      ),

      appBarTheme: AppBarTheme(elevation: 0,backgroundColor: Colors.transparent,
        titleTextStyle:TextStyle(fontSize: 30,fontWeight:FontWeight.bold,),
        centerTitle: true,),
      colorScheme:ColorScheme.fromSeed(
          seedColor:lightPrimary,
          primary: lightPrimary
          ,onPrimary: Colors.black,

      )
  );

}            //               "   صاحب الطموح مهموم يا شهد      "
