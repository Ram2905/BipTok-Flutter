import 'package:biptok/screens/profile.dart';
import 'package:biptok/utilities/constants.dart';
import 'messagescreen.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

enum RadioMaleFemale { male, female }

class EditProfile extends StatefulWidget {
  //const EditProfile({ Key? key }) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  RadioMaleFemale selection = RadioMaleFemale.male;
  @override
  @override
  void initState() {
    super.initState();
    selection = RadioMaleFemale.male;
  }

  setSelectedRadio(RadioMaleFemale val) {
    setState(() {
      selection = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context, Profile);
              },
              icon: Icon(Icons.close),
            );
          },
        ), //check
        title: Text('Edit Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            color: kyellow,
            onPressed: () {
              {}
            },
          )
        ],
        backgroundColor: kbuttonbg,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Container(
              child: CircleAvatar(
                radius: kavatarRadiusonEditPage,
                backgroundImage: AssetImage('assets/images/ProPic.jpeg'),
                child: Icon(Icons.queue),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              width: double.infinity,
              child: Text(
                'Name',
                style: kbetweenwhiteandbgStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: TextField(
                style: keditPagetextfieldstyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              width: double.infinity,
              child: Text(
                'Username',
                style: kbetweenwhiteandbgStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: TextField(
                style: keditPagetextfieldstyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              width: double.infinity,
              child: Text(
                'Gender',
                style: kbetweenwhiteandbgStyle,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Radio(
                  value: RadioMaleFemale.male,
                  groupValue: selection,
                  activeColor: Colors.white,
                  onChanged: (val) {
                    print('Radio $val');
                    setSelectedRadio(val);
                  },
                ),
                Text(
                  'Male',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
                Radio(
                  value: RadioMaleFemale.female,
                  groupValue: selection,
                  activeColor: Colors.white,
                  onChanged: (val) {
                    print('Radio $val');
                    setSelectedRadio(val);
                  },
                ),
                Text(
                  'Female',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              width: double.infinity,
              child: Text(
                'Bio',
                style: kbetweenwhiteandbgStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: TextField(
                style: keditPagetextfieldstyle,
              ),
            ),
            // Row(
            //   children: [
            //     ListTile(
            //       title: const Text('www.javatpoint.com'),
            //       leading: Radio(
            //         activeColor: Colors.white,
            //         value: RadioMaleFemale.male,
            //         groupValue: _selection,
            //         onChanged: (RadioMaleFemale value) {
            //           setState(() {
            //             _selection = value;
            //           });
            //         },
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
      backgroundColor: kappBgColor,
    );
  }
}
