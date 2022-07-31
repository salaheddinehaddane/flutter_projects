import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            /// Finma hatitih lmhm howa ikon wast scaffold
            onPressed: () {
              print('Floating Action Button is Pressed');
            },
            child: Icon(
              Icons.add,
              // or color:Colors.white, instead of foregroundColor
              size: 30,
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          body: SafeArea(
            child: Column(children: [
              Row(children: [
                Expanded(
                  child: GestureDetector(                  //GestureDetector
                    onTap: (){                             //onTap
                      print('image is pressed one time');
                    },
                    onDoubleTap: (){                        //onDoubleTap
                      print('image is pressed two times');
                    },
                    child: Image(
                      image: AssetImage('images/photo.jpg'),
                      height: 300,
                    ),
                  ),
                ),
              ]),
              Text('Why this one is centred like this'),
              /*FlatButton(     // this one is deprecated
              onPressed: (){
                print('Flta Button is Pressed'),
                child:Text('Flat Button'),
              }*/
              RaisedButton(
                // also is deprecated
                onPressed: () {
                  print('Raised Button is Pressed');
                },
                child:
                    //Icon (Icons.access_alarms,),        // You can use also icons inside the buttons
                    Text('Raised Button'),
                color: Colors.cyan,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
              ),
              TextButton(
                onPressed: () {
                  print('Text Button is Pressed');
                },
                child: Text('Text Button'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Elevated Button is Pressed');
                },
                child: Text('Elevated Button'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //onPressed:null  (Like you mute the button)
                  print('Button is Pressed');
                },
                icon: Icon(
                  Icons.book_online,
                ),
                label: Text('ElevatedButtons.icon'),
                onLongPress: () {
                  print('Button is long Pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  onPrimary: Colors.white,
                  onSurface: Colors
                      .purple, // the button will takes this color when it is muted
                ),
              ),
              OutlinedButton(
                  onPressed: () {},
                  child: Text('Outlined Button'),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.purple,
                    side: BorderSide(
                      color: Colors.green, 
                      width: 3  // the width of the border
                    ),
                  ))
            ]),
          ),
        ));
  }
}
