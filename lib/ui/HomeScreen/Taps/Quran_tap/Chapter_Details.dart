
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/VersesContent.dart';
import 'package:islami/ui/theam/Theam.dart';

class ChapterDetails extends StatefulWidget{
 static const String routeName = 'ChapterDetails';

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String>Verses =[];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArg;
    if(Verses.isEmpty){

      readFileData(args.ChapterIndex);

    }

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
        child:Verses.isNotEmpty?
        ListView.separated(itemBuilder: (context, index)
        {
         return VersesContent(Verses[index],index);
  },
          itemCount:Verses.length ,
        separatorBuilder:  (context, index) =>
            Container(height: 1,
              color: MyTheamData.lightPrimary
              ,width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 64),),)
        :Center(child: CircularProgressIndicator()),
      ) ,
  )]);
  }

  void readFileData(int fileindex)async{
 String fileContent= await rootBundle.loadString('assets/files/${fileindex+1}.txt');
List<String>lines = fileContent.trim().split("\n");
setState(() {
  Verses=lines;
});
 }
}
class ChapterDetailsArg{
  int ChapterIndex;
  String ChapterTitle;
  ChapterDetailsArg(this.ChapterIndex,this.ChapterTitle);

}