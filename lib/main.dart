import 'package:biptok/screens/editprofile.dart';
import 'package:biptok/screens/homepage.dart';
import 'package:biptok/screens/livescreen.dart';
import 'package:biptok/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:biptok/screens/messagescreen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:biptok/utilities/constants.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  // const Myapp({ Key? key }) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int selectedpage = 4;
  final _pageOption = [
    VideoApp(),
    Homepage(),
    Null,
    MessageScreen(),
    Profile()
  ];

  void _onItemTapped(int i) {
    if (i != 2) {
      setState(() {
        selectedpage = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "BipTokUi",
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: _pageOption[selectedpage],
          bottomNavigationBar: ConvexAppBar(
            elevation: 0,
            backgroundColor: kappBgColor,
            //disableDefaultTabController: true,
            style: TabStyle.fixed,
            items: [
              // TabItem(icon: Icons.home, title: 'Home'),
              TabItem<Widget>(
                  icon: Image.asset('assets/icons/homei.png'),
                  activeIcon: Image.asset('assets/icons/homea.png'),
                  title: 'Home'),

              TabItem<Widget>(
                  icon: Image.asset('assets/icons/searchi.png'),
                  activeIcon: Image.asset('assets/icons/searcha.png'),
                  title: 'Discover'),
              TabItem<Widget>(
                  icon: Image.asset(
                    'assets/icons/biptoc.png',
                  ),
                  title: ''),
              TabItem<Widget>(
                  icon: Image.asset('assets/icons/msgi.png'),
                  activeIcon: Image.asset('assets/icons/msga.png'),
                  title: 'Inbox'),
              TabItem<Widget>(
                  icon: Image.asset('assets/icons/personI.png'),
                  activeIcon: Image.asset('assets/icons/persona.png'),
                  title: 'Me'),
            ],
            onTap: _onItemTapped,
            // (int i) {
            //   setState(() {
            //     selectedpage = i;
            //   });
            // }

            //onTap: _onItemTapped,
            //initialActiveIndex: selectedpage, //optional, default as 0
            //ontap:(int i){}

            // print('click index=$i');
            // if (i == 0) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return VideoApp();
            //       },
            //     ),
            //   );
            // } else if (i == 1) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return Homepage();
            //       },
            //     ),
            //   );
            // }
            // // else if (i == 2) {
            // //   Navigator.push(
            // //     context,
            // //     MaterialPageRoute(
            // //       builder: (context) {
            // //         return VideoApp();
            // //       },
            // //     ),
            // //   );
            // // }
            // else if (i == 3) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return MessageScreen();
            //       },
            //     ),
            //   );
            // } else if (i == 4) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return Profile();
            //       },
            //     ),
            //   );
            // }
            // },
          ),
        ),
      ),
    );
  }
}

/*

class MyApp extends StatelessWidget {
  // TabController _tabController = new TabController();
  int selectedpage = 0;
  final _pageOption = [
    VideoApp(),
    Homepage(),
    Null,
    MessageScreen(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "BipTokUi",
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: _pageOption[selectedpage],
          //appBar: AppBar(title: const Text('Custom ConvexAppBar')),
          // body: TabBarView(
          //   children: [
          //     VideoApp(),

          //     //'A',
          //     'B', //
          //     'C', //
          //     'D', //
          //     'E' //
          //   ]
          //       .map((i) => Center(
          //               child: Scaffold(
          //             body: i,
          //           )))
          //       .toList(growable: false),
          // ),
          bottomNavigationBar: ConvexAppBar(
            elevation: 0,
            backgroundColor: kappBgColor,
            //disableDefaultTabController: true,
            style: TabStyle.fixed,
            items: [
              // TabItem(icon: Icons.home, title: 'Home'),
              TabItem<Widget>(
                  icon: Image.asset('assets/icons/homei.png'),
                  activeIcon: Image.asset('assets/icons/homea.png'),
                  title: 'Home'),

              TabItem<Widget>(
                  icon: Image.asset('assets/icons/searchi.png'),
                  activeIcon: Image.asset('assets/icons/searcha.png'),
                  title: 'Discover'),
              TabItem<Widget>(
                  icon: Image.asset(
                    'assets/icons/biptoc.png',
                  ),
                  title: ''),
              TabItem<Widget>(
                  icon: Image.asset('assets/icons/msgi.png'),
                  activeIcon: Image.asset('assets/icons/msga.png'),
                  title: 'Inbox'),
              TabItem<Widget>(
                  icon: Image.asset('assets/icons/personI.png'),
                  activeIcon: Image.asset('assets/icons/persona.png'),
                  title: 'Me'),
            ],
            initialActiveIndex: selectedpage, //optional, default as 0
            ontap:(int i){}
            onTap: (int i) {
              
              print('click index=$i');
              if (i == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoApp();
                    },
                  ),
                );
              } else if (i == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Homepage();
                    },
                  ),
                );
              }
              // else if (i == 2) {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return VideoApp();
              //       },
              //     ),
              //   );
              // }
              else if (i == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MessageScreen();
                    },
                  ),
                );
              } else if (i == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Profile();
                    },
                  ),
                );
              }
            },
          ),
        ),
      ),
      //Homepage(), //VideoApp(), //livescreen(),
      //Profile(),
      //EditProfile(), //MessageScreen(),
    );
  }
}
*/
