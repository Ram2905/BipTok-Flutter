import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:biptok/utilities/constants.dart';
import 'package:biptok/screens/homepage.dart';
import 'package:biptok/screens/profile.dart';
import 'package:biptok/screens/editprofile.dart';
import 'package:biptok/screens/livescreen.dart';

class MessageScreen extends StatefulWidget {
  //const MessageScreen({ Key? key }) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kappBgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/msgbig.png'),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: kdefmessage),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: kdefmessage2),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavBar()
    );
  }
}
/*
class BottomNavBar extends StatelessWidget {
  // const BottomNavBar({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
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
      initialActiveIndex: 2, //optional, default as 0
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
    );
  }
}
*/
