import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/theam/Theam.dart';

import 'Chapter_Details.dart';

class VersesContent extends StatelessWidget{

  String Content;
  int index;
  VersesContent( this.Content ,this.index);
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Text('$Content {${index+1}}',
                textDirection:TextDirection.rtl,
                textAlign: TextAlign.center
                ,style: TextStyle(fontSize: 18,)),
          ),
          Container(
            width: 2,
            color: MyTheamData.lightPrimary,

          ),
        ],
      ),
    );

  }
}
