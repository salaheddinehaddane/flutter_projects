import 'package:delivry/models/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlueDarkColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              Food.tabIcons.length, (index) => Container(
                width: 25,
                height: 25,
                child: SvgPicture.asset(
                  Food.tabIcons[index],
                  color: index == 1 ? kGreenDarkColor : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}