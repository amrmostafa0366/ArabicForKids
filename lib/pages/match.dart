import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class Match extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  var player = AudioCache();
   Map<String, bool> score = {};
   Map<String, Color> choices = {
     '🍓' : Colors.red,
     '🍏' : Colors.green,
     '🌊' : Colors.blue,
     '🌞' : Colors.yellow,
     '🍋' : Colors.orange,
     '🍇' : Colors.purple,
     '🌰' : Colors.brown,


   };
   int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Column(
         //   mainAxisAlignment: MainAxisAlignment.spaceAround,
         //   crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.keys.map((element){
              return Expanded(
                child: Draggable<String>(
                  data: element,
                  child: Movable(score[element] == true ? '✔️' : element),
                  feedback: Movable(element),
                  childWhenDragging: Movable('🍭'),
                ),
              );
            }).toList(),
         ),   
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: choices.keys.map((element){
             return buildTarget(element);
           }).toList()
           ..shuffle(Random(index)),
         ),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.refresh),
        onPressed: (){
          setState((){
            score.clear();
            index ++;
          });
        },
      ),
    );
  }
  Widget buildTarget(element) {
    return DragTarget<String>(
      builder: (context, incoming, rejected){
        if(score[element] == true){
          return Container(
            color: Colors.white,
            child: Text('أحسنت', style: TextStyle(fontFamily: 'Markazi', fontSize:40),),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        }else{
          return Container(
            color: choices[element],
            height: 80,
            width: 200,
          );
        }
      },
      onWillAccept: (data)=> data == element,
      onAccept: (data){
        setState((){

          score[element] = true;
          player.play('clap.wav');

        });
      },
      onLeave: (data){},
      
    );
  }
}


class Movable extends StatelessWidget {

  String emoji;

  Movable(this.emoji);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        //padding: EdgeInsets.all(),
        child: Text(emoji, style: TextStyle(color: Colors.black,fontSize: 40,),
      ),
    
    )
    );
  }
}
