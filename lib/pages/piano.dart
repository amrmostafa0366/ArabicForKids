import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Piano extends StatefulWidget {
  @override
  _PianoState createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  static AudioCache player = AudioCache();

  Widget myTone(Color myColor, int myNumber) {
    return Expanded(
      
      child: FlatButton(
          color: myColor,
          onPressed: () {
            setState(() {
              player.play('note$myNumber.wav');
            });
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

        body: SafeArea(
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              myTone(Colors.white, 1),
              myTone(Colors.black, 2),
              myTone(Colors.white, 3),
              myTone(Colors.black, 4),
              myTone(Colors.white, 5),
              myTone(Colors.black, 6),
              myTone(Colors.white, 7),
              
            ],
          ),
          
        ),
      ),
    );
  }
}


