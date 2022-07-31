import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant/List/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_outlined,
                  ),
                  Text(
                    'Welcome',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                      //radius:30,
                      backgroundImage: AssetImage('assets/me.jpg'))
                ],
              ),
              SizedBox(height: 20),
              Text('Lets find your',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38)),
              Text('plants!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38)),
              SizedBox(height: 20),
              TextField(
                // cursorColor: Colors.red,
                // cursorRadius: Radius.circular(16.0),
                // cursorWidth: 16.0,
                decoration: InputDecoration(
                  labelText: "Serach Product", //\u{1F50D}
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide:
                        const BorderSide(color: Color(0xfff0eded), width: 0.0),
                  ),
                  filled: true,
                  fillColor: Color(0xfff0eded),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffece8e5),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text('Brighten a day,',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Today,',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Discount until',
                                style: TextStyle(
                                    color: Color(0xffc8abac),
                                    fontWeight: FontWeight.bold)),
                            Text('70% off',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    color: Colors.green[900])),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.359,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(300),
                              bottomLeft: Radius.circular(300),
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: FittedBox(
                              child: Image.asset('assets/plant1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: Mylist.categories.length,
                      itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.only(right: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xfff0eded),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(18, 12, 18, 12),
                              child: Text(
                                Mylist.categories[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7a7878),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                child: Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: Mylist.plants.length,
                    itemBuilder: (context, i) =>
                        Container(color: Colors.red, child: Text('Salam')),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
