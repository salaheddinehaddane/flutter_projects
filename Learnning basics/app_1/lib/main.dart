import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( // hot reload not works like this structur, you should writr like the first code that flutter gives you ay the first
                      // if the test folder show an error (MyApp not defined), delete the file which include this folder
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hi Salah Eddine'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
          child: Image(
        image: AssetImage('images/MyPhoto.jpg'), // you should edit pubspec.yaml first, =>(one Tab)assets: (jumb line) (2 Tab)- images/(this one is folder name where the images)
      )
          //child: Image(image: NetworkImage('http://..........'),) // your phone should be connected to wifi to load the image
          //child: Text('I am a developer'), 
          ),
    ),
  ));
}


// to add the icon to the app:
//#1 go to appicon.co
//#2-1 for android go to Flutter_Projects\app_1\android\app\src\main\res
//#2-2 replace 5 folders called mip.. of this folder from android that you downloaded
//#3-1 for ios go to Flutter_Projects\app_1\ios\Runner\Assets.xcassets
//#3-2 replace the old folder from the new folder that you downloaded called Assets.x..

