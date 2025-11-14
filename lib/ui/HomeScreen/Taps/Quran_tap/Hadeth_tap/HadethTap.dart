import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/Hadeth_tap/Hadeth_titel.dart';

import '../../../../theam/Theam.dart';

class HadethTap extends StatefulWidget{
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth>allHadeth =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readHadethfile();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/hadith_header.png')),
        Container(
          color: MyTheamData.lightPrimary,
          height: 3,
          width: double.infinity,

        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: .8),
          child: Text('Hadeth Title'
            ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        ),
        Container(
          color:MyTheamData.lightPrimary,
          height: 3,
          width: double.infinity,

        ),
        Expanded(
          flex: 2,
          child: allHadeth.isNotEmpty?
          ListView.separated(
            itemBuilder:(context, index) => HadethTitel(allHadeth[index]),
            itemCount: allHadeth.length,
            separatorBuilder: (context, index) => Divider(
              height: 0,
              endIndent: 30,
              indent: 30,
              color: MyTheamData.lightPrimary,
            ),


          )
          :Center(child: CircularProgressIndicator()),
        )
      ],

    );

  }

  void readHadethfile()async{
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>Hadethseparated =fileContent.split('#');
    for(int i =0; i<Hadethseparated.length;i++){
      String SingelHadeth =Hadethseparated[i];
      List <String> lines = SingelHadeth.trim().split('\n');
      String titel =lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth h = Hadeth(titel, content);
      allHadeth.add(h);


    }setState(() {

    });


  }
}
class Hadeth{
  String title;
  String content;
  Hadeth(this.title,this.content);
}