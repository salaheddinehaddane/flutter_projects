import 'package:del/models/food_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
        //height:MediaQuery.of(context).size.height*0.1,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.4),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        ),
        child: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          itemCount: Food.horzScroll.length,
          itemBuilder: (context, i) => 
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 20, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                Container(
                  padding:EdgeInsets.all(15),
                  decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
                  //child: Text(Food.horzScroll[i]['icon'].toString()),
                  child: SvgPicture.asset(
                    //Food.items[i].img,
                    //fit: BoxFit.cover ,
                    Food.horzScroll[i]["icon"].toString(),
                    height:30,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height:10),
                Text(Food.horzScroll[i]['name'].toString(),
                style:TextStyle(fontWeight:FontWeight.w500)
                )
              ],
            ),
          ),
        ));
  }
}
