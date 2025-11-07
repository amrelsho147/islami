import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/theam/Theam.dart';

import 'Chapter_Details.dart';

class ChapterTitel extends StatelessWidget{

  String titel;
  int index;
  String NumOfverses;
  ChapterTitel( this.titel , this.NumOfverses,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.pushNamed(context, ChapterDetails.routeName,arguments: ChapterDetailsArg(index, titel));
        },
        child:
        IntrinsicHeight(
          child: Row(
            children: [
            Expanded(
              child: Text(titel,textAlign: TextAlign.center
              ,style: TextStyle(fontSize: 18,)),
            ),
              Container(
                width: 2,
                color: MyTheamData.lightPrimary,

              ),
              Expanded(child: Text( textAlign: TextAlign.center,
                  NumOfverses,style: TextStyle(fontSize: 18,)))
            ],
          ),
        )

    );

  }
}
