import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/homeScreen.dart';

import '../theam/Theam.dart';

class splashScreen extends StatelessWidget{
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
Future.delayed(Duration(seconds: 2),(){
  Navigator.pushReplacementNamed(context,HomeScreen.routeName);

});
bool isdark =MyTheamData.isDark;
  return Scaffold(
    body: Image.asset( isdark?'assets/images/splash_dark.png':
      'assets/images/splashscreen.jpg',
    fit: BoxFit.fill,
    height:double.infinity,width: double.infinity,),
    
  );
  }
}
