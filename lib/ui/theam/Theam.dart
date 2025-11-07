import 'package:flutter/material.dart';

class MyTheamData{
  static final Color lightPrimary = Color(0xffB7935f);
  static final ThemeData lightTheam = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:Color(0xffB7935f),
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Colors.black
        )
      ),

      appBarTheme: AppBarTheme(elevation: 0,backgroundColor: Colors.transparent,
        titleTextStyle:TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
        centerTitle: true,),
      colorScheme:ColorScheme.fromSeed(seedColor:Color(0xffB7935f),
      primary: Colors.white,onPrimary: Colors.black
      )
  );
}
//'assets/images/moshaf_gold.png')),label: 'quran',backgroundColor: MyTheamData.lightPrimary),
//         BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),label: 'headeth'),
//         BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'tasbeh '),
//         BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'radio')