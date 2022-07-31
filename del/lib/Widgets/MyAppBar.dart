import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(   
      backgroundColor:Colors.white10,
      elevation:0,
      actions:[Padding(
        padding: const EdgeInsets.all(20.0),
        child: SvgPicture.asset(
          'assets/svgs/shopping-bag.svg',
          color:Colors.black,
          height:20.0
          ),
      )],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(80);
}