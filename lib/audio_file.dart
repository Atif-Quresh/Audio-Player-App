import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancePlayer;
  AudioFile({Key? key, required this.advancePlayer}) : super(key: key);

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  final String path =
      "https://www.bensound.com/royalty-free-music/track/ukulele";
  bool isPlaying = false;
  bool isPause = false;
  bool isLoop = false;
  late AudioCache _cache;

  @override
  void initState() {
    super.initState();
    _cache = AudioCache(fixedPlayer: widget.advancePlayer);
    this.widget.advancePlayer.onDurationChanged.listen((event) {
      setState(() {
        _duration = event;
      });
    });
    this.widget.advancePlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        _position = event;
      });
    });
    widget.advancePlayer.onPlayerCompletion.listen((event) {
      setState(() {
        _position = Duration.zero;
        isPlaying = false;
      });
    });
    //widget.advancePlayer.setUrl(path);
  }

  Widget slider() {
    return Slider(
        activeColor: Colors.red,
        inactiveColor: Colors.grey,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            changeToSecond(value.toInt());
            value = value;
          });
        });
  }

  void changeToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    this.widget.advancePlayer.seek(newDuration);
  }

  Widget btnLoop() {
    return IconButton(
      icon: ImageIcon(
        AssetImage('assets/images/loop.png'),
        size: 15,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }

  Widget btnFrwd() {
    return IconButton(
      icon: ImageIcon(
        AssetImage('assets/images/forward.png'),
        size: 15,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }

  Widget btnBackword() {
    return IconButton(
      icon: ImageIcon(
        AssetImage('assets/images/backword.png'),
        size: 15,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }

  Widget btnRepeat() {
    return IconButton(
      icon: ImageIcon(
        AssetImage('assets/images/repeat.png'),
        size: 15,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }

  Widget btnMenu() {
    return IconButton(
      icon: ImageIcon(
        AssetImage('assets/images/menu.png'),
        size: 15,
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }

  Widget btnStart() {
    return IconButton(
        icon: isPlaying == false
            ? Icon(Icons.play_circle_fill)
            : Icon(Icons.pause_circle_filled),
        onPressed: () {
          print("Is playing status : $isPlaying");
          if (isPlaying == false && isPause == false) {
            _cache.play("ffConvert.mp3");
            setState(() {
              isPlaying = true;
              print("Is playing status : $isPlaying");
            });
          } else if (isPlaying == true && isPause == false) {
            widget.advancePlayer.pause();
            setState(() {
              isPlaying = false;
              isPause = true;
            });
          } else if (isPlaying == false && isPause == true) {
            widget.advancePlayer.resume();
            setState(() {
              isPlaying = true;
              isPause = false;
            });
          }
          //this.widget.advancePlayer.play(path);
        });
  }

  Widget loadAsset() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          btnRepeat(),
          btnBackword(),
          btnStart(),
          btnFrwd(),
          btnLoop(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      //color: Color.fromARGB(255, 54, 244, 86),
      child: Column(
        children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_position.toString().split(".")[0]),
              slider(),
              Text((_duration-_position).toString().split(".")[0]),
            ],
          ),
        ),
        loadAsset(),
      ]),
    );
  }
}
