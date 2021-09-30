import 'package:biptok/screens/editprofile.dart';
import 'package:biptok/utilities/constants.dart';
import 'messagescreen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'package:marquee/marquee.dart';

//void main() => runApp(VideoApp());

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    _controller = VideoPlayerController.network(
        'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  var heart = "1K";
  int comment = 106;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Demo',
      home: Scaffold(
        //backgroundColor: ,
        body: Center(
          child: Stack(
            children: [
              VideoPlayer(_controller),

//gradient
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        kblackHard,
                        kblackSoft,
                        Colors.transparent,
                      ],
                      stops: [
                        0.06,
                        0.4,
                        0.5
                      ]),
                ),
              ),
//icons
              Container(
                // color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 640,
                      bottom: 50.0), // 640.0, bottom: 50.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '@michael_dam',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          //biptoc icon
                          SizedBox(
                            height: 20.0,
                            width: 20.0,
                            child: Image.asset('assets/icons/biptoksmall.png'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          //marquee text
                          SizedBox(
                            height: 31,
                            width: 250,
                            //color: Colors.blue,
                            child: Marquee(
                              text: 'Music Name',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                              velocity: 100,
                              blankSpace: 500.0,
                              scrollAxis: Axis.horizontal,
                              pauseAfterRound: Duration(seconds: 2),
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
//name and marquee
              Container(
                height: 800,
                //color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.only(left: 380.0, top: 370.0),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: kwhite,
                              size: 50,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            children: [
                              Text(
                                heart,
                                style: klivescreenicontext,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.forum,
                              color: kwhite,
                              size: 50,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Text(
                                comment.toString(),
                                style: klivescreenicontext,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.reply,
                              color: kwhite,
                              size: 50,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Text(
                                "Share",
                                style: klivescreenicontext,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              backgroundColor: kalbumiconbg,
                              onPressed: () {
                                setState(() {
                                  _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play();
                                });
                              },
                              child: Icon(
                                _controller.value.isPlaying
                                    ? Icons.album
                                    : Icons.album,
                                color: lalbumiconcolor,
                                size: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
