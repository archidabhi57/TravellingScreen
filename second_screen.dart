library dart.js;

import 'package:flutter/material.dart';
import 'package:application_screen/third_screen.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {

  var VariableIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 5),
                              child: Expanded(
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgZBXkEgzvue7q9Y_7oRIMh7qaWLSQeFl-T082L3qFVoXnkoqXlekT0X95JtEuFPOp7MQ&usqp=CAU')),
                              ),
                            ),
                            Expanded(flex: 2,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Welcome Back👋',
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                    Container(
                                        child: Text(
                                          'Ronald Richards',
                                          style: TextStyle(
                                              color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                            fontSize: 17
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(

                              child: CircleAvatar(

                                  backgroundColor: Colors.orange[200],
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ))
                  ],
                ),

              ),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Column(children: [
                          Row(children: [
                            Flexible(
                              flex: 1,
                              child: Card(
                                elevation: 10,
                                child: TextField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                      hintText: 'Discovery a city',
                                      hintStyle:
                                      TextStyle(color: Colors.grey, fontSize: 18),
                                      prefixIcon: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Icon(
                                          Icons.search,
                                          color: Colors.orange,
                                        ),

                                      ),
                                      suffixIcon: Container(
                                        child: Icon(Icons.list_rounded),
                                      )),

                                ),
                              ),
                            ),
                          ]),
                        ])),
                  )),
              Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Cards('assets/images/mountain.png', 'Mountain'),
                          Cards('assets/images/beach.jpg', 'Beach'),
                          Cards('assets/images/park.jpg', 'Park')
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
          )),
              Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Explore Cities',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'NotoSansAdlamUnjoined'),
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.all(10),
                  //   height: 20.0,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[
                  //       Container(
                  //         color: Colors.yellow,
                  //         width: 90,
                  //         child: Text('All'),
                  //       ),
                  //       Container(
                  //         color: Colors.orangeAccent,
                  //         width: 90,
                  //         child: Text('Popular'),
                  //       ),
                  //       Container(
                  //         color: Colors.pink,
                  //         width: 90,
                  //         child: Text('Recommended'),
                  //       ),
                  //       Container(
                  //         color: Colors.red,
                  //         width: 90,
                  //         child: Text('MostViwed'),
                  //       ),
                  //       Container(
                  //         color: Colors.orangeAccent,
                  //         width: 90,
                  //         child: Text('Recods'),
                  //       ),
                  //     ],
                  //   ),
                  // )
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Name('All'),
                          Name('Popular'),
                          Name('Recommended'),
                          Name('MostViwed'),
                          Name('Records')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
              Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CreateCards('assets/images/mount nature.jpg', 'Mount Bromo',
                            'Thailand', '4.9', '890/person'),
                        CreateCards('assets/images/nature cartoon.jpg', 'Mount Bromo',
                            'Thailand', '4.9', '890/person'),
                        CreateCards('assets/images/snow hill station.jpg', 'Mount Bromo',
                            'Thailand', '4.9', '890/person'),
                        CreateCards('assets/images/mount.jpg', 'Mount Bromo',
                            'Thailand', '4.9', '890/person'),
                  ],
                ),
              ),
            ),
          )),
              Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Popular Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'NotoSansAdlamUnjoined'),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Image.asset(
                                  'assets/images/aeroplane.png',
                                  width: 50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Flights',
                              style: TextStyle(
                                fontSize: 12
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.asset(
                                  'assets/images/hotel.jpg',
                                  width: 50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Hotels',
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                child: Image.asset(
                                  'assets/images/transport.jpg',
                                  width: 50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Transports',
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.asset(
                                  'assets/images/events.jpg',
                                  width: 50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('Events',
                                style: TextStyle(
                                    fontSize: 12
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          //Expanded(child: Container(color: Colors.black45,)),
        ],
      ),

          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                currentIndex: VariableIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home,
                        color: Colors.grey,
                      ),
                      label: 'Home',

                      backgroundColor: Colors.deepOrange[200]),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.explore_outlined,
                      color: Colors.grey,
                      ), label: 'Explore',
                  ),
                  BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined,
                    color: Colors.grey,
                  ), label: 'Widgets'),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_outlined,
                    color: Colors.grey,
                  ), label: 'Favorite'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline_outlined,
                        color: Colors.grey,
                      ), label: 'Profile'),
                ],
              ),
            ),
          ),
    )
    );
  }
}

Widget CreateCards(image, name, location, rating, price) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: SizedBox(
      height: 230,
      width: 190,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        elevation: 10,

        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  // color: Colors.amber,
                  // margin: EdgeInsets.only(left: 10),
                  width: 325,
                  height: 115,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: ListTile(
                      leading: InkWell(
                        child: Image(
                          image: AssetImage(
                            image,
                          ),
                          // width: 260,
                          // height: 100,

                          fit: BoxFit.contain,
                        ),
                        onTap: () {
                          Navigator.of(image).push(
                              MaterialPageRoute(builder: (context) {
                                // return
                                return Third_Screen();
                              },
                              ),);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Text(
                                    name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'NotoSansAdlamUnjoined'),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                      fontFamily: 'NotoSansAdlamUnjoined',
                                      color: Colors.grey),
                                ),
                              ),
                            )),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(
                                    location,
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'NotoSansAdlamUnjoined',
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                price,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'NotoSansAdlamUnjoined',
                                    color: Colors.orange),
                              ),
                            ))
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget Cards(Image1, Name1) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: SizedBox(
      height: 80,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image(
                    image: AssetImage(
                      Image1,
                    ),
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  Name1,
                  style: TextStyle(
                      fontFamily: 'NotoSansAdlamUnjoined',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget Name(ExploreCities){
  return Container(
    child: Card(
        elevation: 1,
        child: Text(ExploreCities)),
  );
}
