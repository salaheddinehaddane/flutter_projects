import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';

void main() {
  runApp(MainHome());
}

class MainHome extends StatelessWidget {
  const MainHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:SafeArea(
          child: HomeScreen(),
          ),
        ),
    );
  }
}