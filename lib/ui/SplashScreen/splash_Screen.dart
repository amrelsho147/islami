import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/homeScreen.dart';

class splashScreen extends StatelessWidget{
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
Future.delayed(Duration(seconds: 2),(){
  Navigator.pushReplacementNamed(context,HomeScreen.routeName);

});

  return Scaffold(
    body: Image.asset('assets/images/splashscreen.jpg',
    fit: BoxFit.fill,
    height:double.infinity,width: double.infinity,),
    
  );
  }
}
