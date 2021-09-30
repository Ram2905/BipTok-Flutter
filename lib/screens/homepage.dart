//import 'package:biptok/screens/editprofile.dart';
import 'dart:ui';

import 'package:biptok/utilities/constants.dart';
import 'messagescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:smooth_page_indicator/smooth_indicators.dart';

//import 'package:dots_indicator/dots_indicator.dart';

class Homepage extends StatefulWidget {
  //const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kappBgColor,
        body: Column(
          children: [
//Search Bar
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 450,
                  child: Container(
                    //color: Colors.blue,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          filled: true,
                          fillColor: kbuttonbg,
                          prefixIcon: Icon(
                            Icons.search,
                            color: kbetweenwhiteandbg,
                            size: 30,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            borderSide: BorderSide.none,
                          )),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
//smooth page indicator with page view and images
            Row(
              children: [
                SizedBox(
                  height: 200,
                  width: 450,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.blue,
                        child: PageView(
                          controller: _pageController,
                          children: [
                            _Page(
                              'page 1',
                              Image.asset("assets/images/bird.jpg"),
                            ),
                            _Page(
                              'page 2',
                              Image.asset("assets/images/coffee.jpg"),
                            ),
                            _Page(
                              'page 3',
                              Image.asset("assets/images/arch.jpg"),
                            ),
                          ],
                        ),
                      ),

                      // Container(
                      //   color: Colors.amber,
                      //   //height: 200.0,
                      //   child:
                      // PageView(
                      //   children: <Widget>[
                      //     Page('page 1',Image.asset("assets/images/bird.jpg"),
                      //     Container(
                      //       child: Image.asset("assets/images/coffee.jpg"),
                      //     ),
                      //     Container(
                      //       child: Image.asset("assets/images/arch.jpg"),
                      //     ),
                      //   ],
                      // ),
                      // ),

                      Padding(
                        padding: const EdgeInsets.only(left: 200.0, top: 150.0),
                        child: Container(
                          child: SmoothPageIndicator(
                            count: 3,
                            //PageController(),
                            controller: _pageController,
                            effect: SlideEffect(
                                dotColor: kbetweenwhiteandbg,
                                activeDotColor: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
//hashtag row
            Row(
              children: [
//#
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: kbuttonbg,
                              radius: 25.0,
                              child: Text(
                                '#',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
//#hashtag
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '#Hashtag',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'Trending Hashtag',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20.0),
                      //   child: Row(
                      //     children: [
                      //       SizedBox(
                      //         width: 2.0,
                      //       ),
                      //       Text(
                      //         'Trending Hashtag',
                      //         style: TextStyle(
                      //           fontSize: 15.0,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),

//view all
                Padding(
                  padding: EdgeInsets.only(left: 129.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Row(
                          children: [
                            (Text('View All')),
                            Icon(Icons.chevron_right)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
//container images row
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 450,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: SingleChildScrollView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 150,
                          width: 633,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    width: 160.0,
                                    //color: Colors.red,
                                    child: Image.asset(
                                        'assets/images/annarye.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.blue,
                                    child:
                                        Image.asset('assets/images/levent.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.green,
                                    child: Image.asset(
                                        'assets/images/charles-parker.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.yellow,
                                    child: Image.asset(
                                        'assets/images/marcelo.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 130.0,
                                    //color: Colors.orange,
                                    child: Image.asset(
                                        'assets/images/ProPic.jpeg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),

/////////////////////////////////////////////////////////////////

//hashtag row
            Row(
              children: [
//#
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: kbuttonbg,
                              radius: 25.0,
                              child: Text(
                                '#',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
//#hashtag
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '#Hashtag',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'Trending Hashtag',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20.0),
                      //   child: Row(
                      //     children: [
                      //       SizedBox(
                      //         width: 2.0,
                      //       ),
                      //       Text(
                      //         'Trending Hashtag',
                      //         style: TextStyle(
                      //           fontSize: 15.0,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),

//view all
                Padding(
                  padding: EdgeInsets.only(left: 129.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Row(
                          children: [
                            (Text('View All')),
                            Icon(Icons.chevron_right)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
//container images row
            SizedBox(
              height: 10.0,
            ),
//container images row
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 450,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: SingleChildScrollView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 150,
                          width: 633,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    width: 160.0,
                                    //color: Colors.red,
                                    child: Image.asset(
                                        'assets/images/annarye.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.blue,
                                    child:
                                        Image.asset('assets/images/levent.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.green,
                                    child: Image.asset(
                                        'assets/images/charles-parker.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.yellow,
                                    child: Image.asset(
                                        'assets/images/marcelo.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 130.0,
                                    //color: Colors.orange,
                                    child: Image.asset(
                                        'assets/images/ProPic.jpeg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),

////////////////////////////////////////////////////////////////////
            /*  //hashtag row
                        Row(
              children: [
//#
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: kbuttonbg,
                              radius: 30.0,
                              child: Text(
                                '#',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
//#hashtag
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '#Hashtag',
                            style: knamestyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Trending Hashtag',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

//view all
                Padding(
                  padding: EdgeInsets.only(left: 134.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Row(
                          children: [
                            (Text('View All')),
                            Icon(Icons.chevron_right)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
//container images row
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 450,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: SingleChildScrollView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 150,
                          width: 633,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    width: 160.0,
                                    //color: Colors.red,
                                    child: Image.asset(
                                        'assets/images/annarye.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.blue,
                                    child:
                                        Image.asset('assets/images/levent.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.green,
                                    child: Image.asset(
                                        'assets/images/charles-parker.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 160.0,
                                    //color: Colors.yellow,
                                    child: Image.asset(
                                        'assets/images/marcelo.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FittedBox(
                                  child: Container(
                                    width: 130.0,
                                    //color: Colors.orange,
                                    child: Image.asset(
                                        'assets/images/ProPic.jpeg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),*/
          ],
        ),
        // bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  _Page(String s, Image image) {
    return FittedBox(
      child: Container(
        child: image,
      ),
      fit: BoxFit.fill,
    );
  }
}
