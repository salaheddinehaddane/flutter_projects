import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:SafeArea(
              child: Row(
                children: [
                  Expanded(
                    flex: 2, // flex hadi ka3ti ch7al nisba dyal width ghadi yakhod element dyalk f row 3la elements lakhrin fnafs row. flex:1 (bydefault)
                    child: Image(
                    image: AssetImage ('images/photo.jpg'), /// if the picture has a big width, it will not appear in the app (always if you put it inside a row) (Overflow). so use the widget Expanded
                            ),
                  ),
                  Expanded(
                    flex:1,
                    child: Image(
                    image: AssetImage ('images/me.png'), /// if the picture has a big width, it will not appear in the app (always if you put it inside a row) (Overflow). so use the widget Expanded
                            ),
                  ),
                ],
              ),
        )
      )
    );
  }
}