import 'package:delivry/constants.dart';
import 'package:delivry/screens/food_details_screen.dart';
import 'package:delivry/screens/mainScreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery food app',
      theme: ThemeData(
        primaryColor: kBlueDarkColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kGreyColor),
          bodyText2: TextStyle(color: kGreyColor),
        ),
      ),
      home: MainScreen(),
      initialRoute: "/",
      routes: {
        FoodDetailsScreen.routeName: (ctx) => FoodDetailsScreen(),  // dak lowal rah name
      },
    );
  }
}

