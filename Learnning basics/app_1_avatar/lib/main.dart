import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SalahEddine HADDANE',
        home: Scaffold(
            backgroundColor: Colors.cyan[50],
            body: SafeArea(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 25),
                    child: Text(
                      'Salah Eddine HADDANE',
                      style: TextStyle(
                        color: Color(0xffFF5722),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'StyleScript',
                      ),
                    ),
                  ),
                 
                  Container(
                    color: Color(0xffFFFFFF), /// 0xff + hexa code
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.symmetric(horizontal:20),
                    child :Text(
                      'Hey! I am 24, I am a web & mobile developer from Morocco.\n\nI have built some web applications during my intership where I honed my coding skills and one of rental car was represented as my final studies project\n\nI would like to continue to specialize in mobile software engineering and in the back-end of web developement',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        
                      )
                    )
                    ),
                  
                  Card(
                    margin:EdgeInsets.fromLTRB(30, 100, 30,0),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                      width: 10,
                  ),
                        Text(
                          'salahhaddane@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                      ]),
                    ),
                  )
                ],
              ),
            ))));
  }
}
/*ListTile(
                          leading: Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                        ),
                        ), 
*/