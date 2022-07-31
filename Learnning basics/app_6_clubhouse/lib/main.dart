import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clubhouse UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xfff2f0e4),
          ),
          scaffoldBackgroundColor: Color(0xfff2f0e4),
          primaryColor: Colors.white, //??
          accentColor: Color(0xff27ae61), //??
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,   /// lkhat mabin appBar o body
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size:30,
                )),
                actions: [
                  IconButton(
                    onPressed:(){},
                    icon: Icon(
                      CupertinoIcons.envelope_open,
                      
                    )),
                    IconButton(
                      onPressed:(){},
                      icon:Icon(CupertinoIcons.calendar,),
                    ),
                    IconButton(
                      onPressed:(){},
                      icon:Icon(CupertinoIcons.bell),),
                ],
          ),
        ));
  }
}
