import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
          title: Text("My Application"),
          elevation: 0,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.search,)
          ),
        ),
        body:Text('Salam'),
      ),
      
    );
  }
}