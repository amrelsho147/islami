import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/Hadeth_tap/HadethTap.dart';

import '../../../../theam/Theam.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethDetails';
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth =ModalRoute.of(context)?.settings.arguments as Hadeth;
    return  Stack(
        children: [
          Image.asset('assets/images/homescreen.jpg',fit: BoxFit.fill,
            height: double.infinity,width: double.infinity,),
          Scaffold(
            appBar: AppBar(title: Text(hadeth.title,style: TextStyle(fontSize: 18,color:Colors.black),),),
            body:Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              margin: EdgeInsets.symmetric(vertical: 50,horizontal: 24),
              elevation: 26,
              child:Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(child: Text(hadeth.content,style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
                    ),
                  ),
                ],
              )
              ),
            ) ,
          ]);
  }
}
