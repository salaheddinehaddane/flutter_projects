import 'package:del/Widgets/HorizontalScroll.dart';
import 'package:del/Widgets/MyAppBar.dart';
import 'package:del/Widgets/list_view.dart';
import 'package:del/models/food_list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'delivery App',
        home: Scaffold(
          appBar: MyAppBar(),
          body: 
          Padding(
                    padding: const EdgeInsets.only(top:25,left:25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Our menu',
                            style: TextStyle(
                              fontSize: 39,
                              fontWeight: FontWeight.w900,
                            )),
                            SizedBox(height: 15,),
                        RichText(
                            text: TextSpan(
                          text: 'in the restaurant on ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: 'Nevsky Prospekt 42',
                                style: TextStyle(color: Colors.green))
                          ],
                        )),
                        SizedBox(height: 15,),
                        Expanded(
                          flex: 1,
                          child: HorizontalScroll()),
                        // Container( height:30,color:Colors.red,child:Text('sAlam')),
                        SizedBox(height: 15,),
                        Text(Food.items.length.toString() + ' Items',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w800)),
                                Expanded(
                                  flex:3,
                                  child: Items(),)
                                
                      ],
                    ),
                  ),
                  
          
      )  );
  }
}
