import 'package:flutter/cupertino.dart';
import 'package:islami/ui/theam/Theam.dart';

class bottomNavItem extends BottomNavigationBarItem{


  bottomNavItem(String title  ,String iconPath,Color backgroundColor ):
        super(icon:ImageIcon(AssetImage(iconPath)),label: title ,
      backgroundColor:backgroundColor);
}