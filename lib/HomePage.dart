import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variables we need:
  bool playing = false;
  // String currentSong = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3";
  IconData playBtn = Icons.play_arrow; // the main state of the play button icon

  // An AudioPlayer instance can play a single audio at a time. To create it, simply call the constructor:
  AudioPlayer audioPlayer = AudioPlayer();

  Duration duration = new Duration(); // how long it will work
  Duration position = new Duration(); //beginning of audio
  Duration musicLength = new Duration();

  //Now let's start by creating our music player
  //first let's declare some object
  late AudioPlayer _player;
  late AudioCache cache; // cache is for using audio file from assets
  void play(String s) {}
  //now for the custom slider:
  Widget slider() {
    return Container(
      width: 300.0,
      child: Slider.adaptive(
          activeColor: Colors.blue[800],
          inactiveColor: Colors.grey[350],
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  //let's create the seek function that will allow us to go to a certain position of the music

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  //Now let's initialize our player
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    //now let's handle the autoplay time

    // this function will allow you to get the music duration
    _player.onDurationChanged.listen((event) {
      setState(() {
        musicLength = event;
      });
    });

    //this function will allow us to move the cursor of the slider while we are playing the song

    _player.onAudioPositionChanged.listen((event) => {
          setState(() {
            position = event;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.pinkAccent.shade700,
              Colors.pinkAccent.shade200,
            ])),
        child: Padding(
          padding: EdgeInsets.only(
            top: 48,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Rock On",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Listen To Your Favourite Music",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Center(
                  // child: Hero(
                  //   tag: "image1",
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/music_pic 1.jpg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Center(
                  child: Text(
                    " Song ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Let's start by adding the controller
                      //let's add the time indicator text

                      Container(
                        width: 500.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            slider(),
                            Text(
                              "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 45,
                            color: Colors.black,
                            icon: Icon(Icons.skip_previous),
                            onPressed: () {},
                          ),
                          IconButton(
                              iconSize: 62,
                              color: Colors.black,
                              icon: Icon(Icons.play_arrow),
                              onPressed: () {
                                //   void playMusic(String url) async {
                                //     if (!playing && currentSong != url) {
                                //       audioPlayer.pause();
                                //       int result = await audioPlayer.play(url);
                                //       if (result == 1) {
                                //         setState(() {
                                //           currentSong = url;
                                //         });
                                //       }
                                //     } else if (!playing) {
                                //       int result = await audioPlayer.play(url);
                                //       if (result == 1) {
                                //         setState(() {
                                //           playing = true;
                                //           playBtn = Icons.pause;
                                //           //from now we hear song
                                //         });
                                //       }
                                //     }
                                //   }
                                // }),
                                // //here we will add the functionality of the play button:
                                if (!playing) {
                                  //now let's play the song:

                                  cache.play(
                                      'assets/audio/music3.mp3');
                                  setState(() {
                                    playBtn = Icons.pause;
                                    playing = true;
                                  });
                                } else {
                                  _player.pause();
                                  setState(() {
                                    playBtn = Icons.play_arrow;
                                    playing = false;
                                  });
                                }
                              }
                          ),
                          IconButton(
                            iconSize: 45,
                            color: Colors.black,
                            icon: Icon(Icons.skip_next),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
