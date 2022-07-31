import 'package:flutter/material.dart';

import 'pages/main-screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}