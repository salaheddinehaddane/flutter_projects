import 'package:delivry/widgets/bottom_navbar.dart';
import 'package:delivry/widgets/custom_clipper.dart';
import 'package:delivry/widgets/main_home.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;  //??
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
          top: false,                               //Kay7ad appBAr
        child: Stack(
          children: [
            Positioned(
              top:0,
              left: 0,
              right: 0,
              height: size.height*0.9,
              child: MainHome(size: size),
            ),
            Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: size.height*(1-0.9) + 40,
            child: ClipPath(
              clipper: MyCustomClipper(), // this one just the shape of the navBottomBar
              child: CustomBottomNavBar(),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
