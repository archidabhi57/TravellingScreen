import 'package:flutter/material.dart';
import 'package:application_screen/second_screen.dart';

class Third_Screen extends StatefulWidget {
  var image;
  var name;
  var location;
  var rating;
  var price;

  Third_Screen(
  {
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.price,
}
      );

  @override
  State<Third_Screen> createState() => _Third_ScreenState();
}

class _Third_ScreenState extends State<Third_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(widget.image,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 0, 15, 0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/images/maps.png',
                              ),
                            ),
                            Text('Maps',
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 10
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/images/guide.png'),
                            ),
                            Text('Guide',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/images/sun and moon.jpg'),
                            ),
                            Text('Day & Night',
                              style: TextStyle(
                                  color: Colors.grey,
                                fontSize: 10
                              ),
                            ),
                          ],
                        ),

                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 0, 20, 0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/images/dinner.jpg'),
                            ),
                            Text('Dinner',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Mount Bromo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text('4.7(9k review)',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_outlined,
                              color: Colors.grey,
                              ),
                              Text('Italia',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Icon(Icons.location_on,
                              color: Colors.orange,
                              ),
                              Text('Map Direction',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The Rolle Pass is a high mountain pass in Trentino \n in Italy.It connects the Fiemme and Primiero valleys,\n and the communities of Predezzo,San Martino di',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}