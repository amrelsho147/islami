
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChapterDetails extends StatelessWidget{
 static const String routeName = 'ChapterDetails';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArg;
    return Stack(
      children: [
      Image.asset('assets/images/homescreen.jpg',fit: BoxFit.fill,
      height: double.infinity,width: double.infinity,),
    Scaffold(
    appBar: AppBar(title: Text(args.ChapterTitle,style: TextStyle(color:Colors.black),),),
      body:Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        margin: EdgeInsets.symmetric(vertical: 50,horizontal: 24),
        elevation: 26,
        child: ListView.builder(itemBuilder: (context, index) 
        {
          Text('DETAILS');
        },
          itemCount:100 ,),
      ) ,
  )]);
  }
}
class ChapterDetailsArg{
  int ChapterIndex;
  String ChapterTitle;
  ChapterDetailsArg(this.ChapterIndex,this.ChapterTitle);

}