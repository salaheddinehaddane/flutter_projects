import 'package:del/models/food_list.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: Food.items.length,
      itemBuilder:(context,index)=>
                          Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                  width: 90,
                                  height:100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Hero(
                                        tag: Food.items[index].name,
                                        child: Image.asset(Food.items[index].img,fit: BoxFit.cover,)),
                                  )
                                  ),
                            ),
                            SizedBox(width:20),
                            Expanded(
                              flex:2,
                              child: 
                              Padding(
                                padding: const EdgeInsets.only(top:10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding:EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color:Colors.red[50],
                                        borderRadius: BorderRadius.circular(8)),
                                      child: Text('Sale',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.orange[900]))),
                                      SizedBox(height:8),
                                    Text(Food.items[index].name,style:TextStyle(fontWeight:FontWeight.bold,fontSize:25,)),
                                    SizedBox(height:8),
                                    Row(
                                      children: [
                                        Text('\$'+Food.items[index].price[0].toString(),style:TextStyle(fontWeight:FontWeight.bold,fontSize:23,)),
                                        SizedBox(width:10),
                                        Text( '\$'+ Food.items[index].price[1].toString(),style:TextStyle(fontWeight:FontWeight.bold,fontSize:17,color:Colors.grey,)),
                                        SizedBox(width:10),
                                        Text(Food.items[index].weight.toString()+' g',style:TextStyle(fontWeight:FontWeight.bold,fontSize:14,color:Colors.grey,)),
                                      ],
                                    ),
                                    SizedBox(height:8),
                                  ],
                                ),
                              ),
                              ),
                          ],
                        ), 
                        );
  }
}