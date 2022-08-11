import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class ClickLetter extends StatefulWidget {
  @override
  _ClickLetterState createState() => _ClickLetterState();
}

class _ClickLetterState extends State<ClickLetter> {
     static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: GridView.count(

        crossAxisCount: 2,
        children: [
          

          Card(child: RaisedButton(
            child: Text('ب',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('2.wav');
            });
          }
          )
          ),
          Card(child: RaisedButton(
            child: Text('أ',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('1.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ث',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('4.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ت',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('3.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ح',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('6.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ج',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('5.wav');
            });
          }
          )
          ),
          
       
          
          Card(child: RaisedButton(
            child: Text('د',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('8.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('خ',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('7.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ر',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('10.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ذ',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('9.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('س',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('12.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ز',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('11.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ص',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('14.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ش',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('13.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ط',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('16.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ض',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('15.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ع',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('18.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ظ',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('17.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ف',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('20.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('غ',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('19.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ك',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('22.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ق',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('21.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('م',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('24.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ل',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('23.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ھ',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('26.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ن',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('25.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('ى',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('28.wav');
            });
          }
          )
          ),
          
          Card(child: RaisedButton(
            child: Text('و',style: TextStyle(fontSize:50) ),
             onPressed: () {
            setState(() {
              player.play('27.wav');
            });
          }
          )
          ),
         

        ]
      )
    );
    }
}

