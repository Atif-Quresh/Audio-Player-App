import 'package:audio_player_flutter/bottom_navbar.dart';
import 'package:audio_player_flutter/color.dart';
import 'package:audio_player_flutter/playlist.dart';
import 'package:audio_player_flutter/recently_played.dart';
import 'package:flutter/material.dart';

import 'all_song.dart';

class AudioLibrary extends StatelessWidget {
  const AudioLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double ScreenHeight = MediaQuery.of(context).size.height;
    final double ScreenWidth = MediaQuery.of(context).size.width;
    print("Audio lib height ${ScreenHeight}");
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          //////// First/AppBar bg container ////////
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: ScreenHeight * 0.15,
              child: Container(
                color: MyColor.PrimaryColor,
              )),
              /////////App Bar/////////////
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
                title: Text(
                  "Library",
                  style: TextStyle(color: MyColor.PrimaryTextColor),
                ),
                centerTitle: false,
                titleSpacing: 0,
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/audio-sound-logo.png",
                    height: 28,
                    width: 28,
                    color: MyColor.PrimaryTextColor,
                  ),
                ),
                //backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                //elevation: 0,
                actions: []),
          ),
          /////////// All Song ////////
          Positioned(
              top: ScreenHeight - (ScreenHeight * 0.6),
              left: 0,
              right: 0,
              //height: ScreenHeight * 0.38,
              //child: AllSong(),
              //),
              child: Column(
                children: [
                  Container(
                    height: ScreenHeight * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 45, 172, 72),
                    ),
                    child: AllSong(),
                  ),
                  Container(
                    height: ScreenHeight * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 45, 172, 72),
                    ),
                    child: RecentlyPlayed(),
                  ),
                  
                ],
              )),
              ///// Playlist Card //////////
          Positioned(
              top: ScreenHeight - (ScreenHeight * 0.88),
              left: 0,
              right: 0,
              
              child: Container(
                height: ScreenHeight * 0.22,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: MyColor.SecondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ), //Color.fromARGB(255, 247, 147, 147)
                child: Playlist(),
              )
              ),
        ],
      )),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: MyColor.PrimaryColor,
    );
  }
}
