import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/BotoomNvITem.dart';
import 'package:islami/ui/theam/Theam.dart';

import 'Taps/Quran_tap/Hadeth_tap/HadethTap.dart';
import 'Taps/Quran_tap/QuranTap.dart';
import 'Taps/RadioTap.dart';
import 'Taps/TaspehTap.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex  =0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/homescreen.jpg',fit: BoxFit.fill,
        height: double.infinity,width: double.infinity,),
    Scaffold(
    appBar: AppBar(title: Text('Islami',style: TextStyle(color:Colors.black),),),
      body: taps[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex =index;
          setState(() {
            selectedIndex =index;
          });
        },
        currentIndex:selectedIndex  ,
        items: [
        bottomNavItem('quarn', 'assets/images/moshaf_gold.png'),
        bottomNavItem( 'headeth','assets/images/icon_hadeth.png'),
        bottomNavItem('tasbehh','assets/images/sebha.png'),
        bottomNavItem('radio','assets/images/radio.png' ),
    ],

    ),
       ) ],
    );

  }
  var taps =[QuranTap(), HadethTap(),TaspehTap(),RadioTap()];

}