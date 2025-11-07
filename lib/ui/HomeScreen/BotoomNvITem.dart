import 'package:flutter/cupertino.dart';
import 'package:islami/ui/theam/Theam.dart';

class bottomNavItem extends BottomNavigationBarItem{

  bottomNavItem(String title  ,String iconPath): super(icon:ImageIcon(AssetImage(iconPath)),label: title , backgroundColor: MyTheamData.lightPrimary);
}