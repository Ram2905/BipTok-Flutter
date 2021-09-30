import 'package:biptok/screens/editprofile.dart';
import 'package:biptok/utilities/constants.dart';
import 'messagescreen.dart';
import 'package:flutter/material.dart';
//import 'package:octo_image/octo_image.dart';

class Profile extends StatefulWidget {
  //Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int likes = 0;
  int following = 0;
  int followers = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kappBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200.0,
                          width: 450.0,
                          //width: double.infinity,
                          color: Colors.black,
                          child: Image.asset(
                            'assets/images/dandalion.png',
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 75.0, left: 150.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                                color: Color.fromRGBO(
                                    31, 36, 46, 0.7), //Color(0xff313646),
                                height: 40,
                                width: 200.0,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: Icon(
                                        Icons.photo_size_select_large,
                                        color: kyellow,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50, top: 10),
                                      child: Text(
                                        'Customize your cover',
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 121.0, left: 20.0),

                  //color: Colors.amber,
                  //width: double.infinity,
                  child: CircleAvatar(
                    radius: kavatarRadiusonEditPagebg,
                    backgroundColor: kappBgColor,
                    //backgroundImage: AssetImage('assets/images/ProPic.jpeg'),
                    //foregroundColor: Colors.amber,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 130.0, left: 30.0),

                  //color: Colors.amber,
                  //width: double.infinity,
                  child: CircleAvatar(
                    radius: kavatarRadiusonEditPage,
                    backgroundImage: AssetImage('assets/images/ProPic.jpeg'),
                    //foregroundColor: Colors.amber,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0, top: 210.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: ButtonTheme(
                          minWidth: 180.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(
                                () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return EditProfile();
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            color: kbuttonbg,
                            //textColor: kbetweenwhiteandbg,
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: ButtonTheme(
                          minWidth: 50.0,
                          height: 50.0,
                          child: RaisedButton(
                              onPressed: () {
                                setState(() {});
                              },
                              color: kbuttonbg,
                              //textColor: kbetweenwhiteandbg,
                              child: Icon(Icons.person_add)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    'Michael Dam',
                    style: knamestyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    'ID: @michael_dam',
                    style: kidstyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    'Tap to add bio to your profile',
                    style: kbiostyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                ),
                Text(
                  '$likes',
                  style: kcountofLikesandFollow,
                ),
                Text(' likes'),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '$following',
                  style: kcountofLikesandFollow,
                ),
                Text(' Following'),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '$followers',
                  style: kcountofLikesandFollow,
                ),
                Text(' Followers'),
              ],
            ),
            // DefaultTabController(
            //   length: 2,
            //   initialIndex: 0,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         child: TabBar(
            //           labelColor: kyellow,
            //           unselectedLabelColor: kblack,
            //           tabs: [
            //             Tab(
            //               text: 'Videos',
            //             ),
            //             Tab(
            //               child: Icon(Icons.lock),
            //               text: 'Likes',
            //             ),
            //             Container(
            //               height: 400, //height of tabbar view
            //               decoration: BoxDecoration(
            //                 border: Border(
            //                   top: BorderSide(color: Colors.grey, width: 0.5),
            //                 ),
            //               ),
            //               child: TabBarView(
            //                 children: [
            //                   Container(
            //                     child: Center(
            //                       child: Text(
            //                         'Display Tab 1',
            //                         style: TextStyle(
            //                             fontSize: 22,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Center(
            //                       child: Text(
            //                         'Display Tab 2',
            //                         style: TextStyle(
            //                             fontSize: 22,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // )
            //////////////////////////////////////////////////////
            SizedBox(
              height: 10.0,
            ),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: kwhite,
                          //unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(
                              child: Text(
                                'Videos',
                                style: knamestyle,
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Icon(Icons.lock),
                                  ),
                                  Text(
                                    'Likes',
                                    style: knamestyle,
                                  ),
                                ],
                              ),
                            ),
                            //Tab(text: 'Tab 3'),
                            // Tab(text: 'Tab 4'),
                          ],
                        ),
                      ),
                      Container(
                          height: 250, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: Center(
                                child: Text('Display Tab 1',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('Display Tab 2',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            // Container(
                            //   child: Center(
                            //     child: Text('Display Tab 3',
                            //         style: TextStyle(
                            //             fontSize: 22,
                            //             fontWeight: FontWeight.bold)),
                            //   ),
                            // ),
                            // Container(
                            //   child: Center(
                            //     child: Text('Display Tab 4',
                            //         style: TextStyle(
                            //             fontSize: 22,
                            //             fontWeight: FontWeight.bold)),
                            //   ),
                            // ),
                          ]))
                    ])),
            //////////////////////////////////////////////////////
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
