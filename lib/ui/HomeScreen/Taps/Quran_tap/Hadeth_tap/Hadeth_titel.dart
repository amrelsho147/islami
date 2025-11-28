
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/Hadeth_tap/HadethTap.dart';
import 'package:islami/ui/HomeScreen/Taps/Quran_tap/Hadeth_tap/Hadeth_details.dart';

import '../../../../theam/Theam.dart';

class HadethTitel extends StatelessWidget{

    Hadeth hadeth;

    HadethTitel(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.pushNamed(context, HadethDetails.routeName,arguments: hadeth);
        },
        child:
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Text(hadeth.title,textAlign: TextAlign.center
                    ,style: TextStyle(fontSize: 18,)),
              ),
              Container(
                width: 2,
                color: MyTheamData.lightPrimary,

              ),
            ],
          ),
        )

    );

  }
}
