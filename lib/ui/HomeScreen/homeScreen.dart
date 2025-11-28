import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/BotoomNvITem.dart';
import 'package:islami/ui/theam/Theam.dart';

import '../../l10n/app_localizations.dart';
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
    bool isdark =MyTheamData.isDark;
    return Stack(
      children: [
        Image.asset(isdark? 'assets/images/home_dark_background.png':
    'assets/images/homescreen.jpg',fit: BoxFit.fill,
        height: double.infinity,width: double.infinity,),
    Scaffold(
    appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle,style:  Theme.of(context).textTheme.bodyMedium,),),
    appBar: AppBar(title: Text('Islami',style: Theme.of(context).textTheme.bodyMedium,),),
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
        bottomNavItem(AppLocalizations.of(context)!.quranTab, 'assets/images/moshaf_gold.png',Theme.of(context).primaryColor),
        bottomNavItem( AppLocalizations.of(context)!.hadethTab,'assets/images/icon_hadeth.png',Theme.of(context).primaryColor),
        bottomNavItem(AppLocalizations.of(context)!.tasbehTab,'assets/images/sebha.png',Theme.of(context).primaryColor),
        bottomNavItem(AppLocalizations.of(context)!.radioTab,'assets/images/radio.png' ,Theme.of(context).primaryColor),
    ],

    ),
       ) ],
    );

  }
  var taps =[QuranTap(), HadethTap(),TaspehTap(),RadioTap()];

}