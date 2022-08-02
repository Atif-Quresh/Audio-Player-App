import 'dart:ui';

import 'package:audio_player_flutter/audio_file.dart';
import 'package:audio_player_flutter/color.dart';
import 'package:audio_player_flutter/playlist.dart';
import 'package:audio_player_flutter/recently_played.dart';
import 'package:audio_player_flutter/up_next.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'bottom_navbar.dart';

class DetailAudioPage extends StatefulWidget {
  DetailAudioPage({Key? key}) : super(key: key);

  @override
  State<DetailAudioPage> createState() => _DetailAudioPageState();
}

class _DetailAudioPageState extends State<DetailAudioPage> {
  final Color color = MyColor.PrimaryColor;
  late AudioPlayer advancePlayer;
  @override
  void initState() {
    super.initState();
    advancePlayer = AudioPlayer();
    print("player initailize");
  }

  @override
  Widget build(BuildContext context) {
    print("build initailize");
    final double ScreenHeight = MediaQuery.of(context).size.height;
    final double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 222, 222, 226),
        child: Stack(
          children: [
            //////// First/AppBar bg container ////////
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: ScreenHeight / 1.8,
                child: Container(
                  //color: Color.fromRGBO(38, 47, 165, 1),
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [ color.withOpacity(0.5), color.withOpacity(0.9)], begin: Alignment.topLeft,
      end: Alignment.bottomRight,)),
                )),
             /////////App Bar/////////////
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  // leading: IconButton(
                  //   icon: Icon(Icons.arrow_back_ios),
                  //   onPressed: () {},
                  //),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ]),
            ),
            /////////// Up Next Container ///////
            Positioned(
            top: ScreenHeight*0.50,
            left: 0,
            right: 0,
            height: ScreenHeight*0.49,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),color: MyColor.PrimaryColor,),//
              padding: EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  // Playlist(),
                  // SizedBox(height: 10,),
                  // RecentlyPlayed(),
                  UpNext_play(),
                ]),
              ),
            )
            ),
          
            /////////// Song Player Card ///////////
            Positioned(
                top: ScreenHeight * 0.2,
                left: ScreenWidth*0.02,
                right: ScreenWidth*0.02,
                height: ScreenHeight / 3.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: MyColor.SecondaryColor,
                  ),
                  padding: EdgeInsets.only(top: ScreenHeight*0.09),
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: Column(
                        children: [
                        Text(
                          "Name of Sound that currently Played",
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        //SizedBox(height: 8),
                        Text("Subtitle"),
                        AudioFile(advancePlayer: advancePlayer,)
                      ]),
                    ),
                )),
            /////////// Music Logo ////////////
            Positioned(
                top: ScreenHeight * 0.13,
                left: (ScreenWidth - 125) / 2,
                right: (ScreenWidth - 125) / 2,
                height: ScreenHeight * 0.13,
                child: Container(
                  
                  padding: EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/images/audio-sound-logo.png",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 0, 0, 0),
                    //image: DecorationImage(image: AssetImage("assets/images/pic-5.png"), fit: BoxFit.fill),
                    border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0), width: 3),
                    //image: const DecorationImage(image: AssetImage("assets/images/audio-sound-logo.png"),),
                  ),
                )),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: MyColor.PrimaryColor,//Color.fromRGBO(58, 132, 155, 1)
    );
  }
}
