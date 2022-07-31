import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// if you make this structure, the hote reload will work fine
class MyApp extends StatelessWidget {
  //stless + Enter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.cyan,
            //body: Container(), if you write inside the container like this, sometimes your texte will appear in the top(next the clock) so use safearea
            body: SafeArea(
                child: Column(
              /// t9dar dir hena row
              verticalDirection: VerticalDirection
                  .down, // by default, ghadi ibda istaf man lfo9 lta7t
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // espace bin elements
              crossAxisAlignment: CrossAxisAlignment
                  .end, // elements kamlin ghadi ibdaw man lisar, dyal column
              children: [
                Container(
                  width: 80.00,
                  height: 50.00,
                  margin: EdgeInsets.all(30.0), //margin of TRBL
                  padding: EdgeInsets.all(30.0),
                  color: Colors.red,
                  child: Text('Hi SalahEddine'),
                ),
                /*SizedBox(
                height:20,     // b7al margin, kadiro mabin container libghiti dir lihum margin
              ),*/
                Container(
                  width: 80.00,
                  height: 50.00,
                  margin: EdgeInsets.all(30.0), //margin of TRBL
                  padding: EdgeInsets.all(30.0),
                  color: Colors.green,
                  child: Text('Hi SalahEddine'),
                ),
                Container(
                  width: 80.00,
                  height: 50.00,
                  margin: EdgeInsets.all(30.0), //margin of TRBL
                  padding: EdgeInsets.all(30.0),
                  color: Colors.yellow,
                  child: Text('Hi SalahEddine'),
                ),
              ],
            )

                //EdgeInsets.symetric(vertical:30,horizontal:30.00)
                //EdgeInsets.fromTRB(30,30,30,30) TOP,RIGHT,BOTTOM,LEFT

                ))
                );
  }
}
