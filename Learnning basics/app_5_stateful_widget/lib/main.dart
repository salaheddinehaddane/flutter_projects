import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color colorbtn = Colors.black;
  int MyNumber = 25;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
    debugShowCheckedModeBanner:false,
    home:Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState((){
            MyNumber++;
          });
        },
        child: Icon
        (Icons.add,
        size:30,
        ),
      ),
      
      body: SafeArea(
        child: Column(
          children: [
               Row(
                children: [                 ///Always use children for Row

                Expanded(
                  child: Image(image:AssetImage('images/photo.jpg'),
                  ),
                ),
                ],
              ),
              Text(
                '$MyNumber',
              style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize:30,
              )
              ),
          TextButton(
            onPressed:(){
              setState((){                // use this function to let the change dynamiclly
                colorbtn=Colors.pink;
                MyNumber++;
              });
            },
            child: Icon(
              Icons.favorite,
              color:colorbtn,
              size:40,
            ),
            
            ),
          ],
          ),
        ),
    ));

  }
}
