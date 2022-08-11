
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class ClickPic extends StatefulWidget {
  @override
  _ClickPicState createState() => _ClickPicState();
}

class _ClickPicState extends State<ClickPic> {
         static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(),

            body: GridView.count(

        crossAxisCount: 1,
        mainAxisSpacing: 20,
            
        children: [

   
            FlatButton(
                child:Image.asset('assets/C1.jpg',fit: BoxFit.fill ),
             onPressed: () {
            setState(() {
              player.play('Asd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C2.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 001_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C3.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 002_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C4.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 003_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C5.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 004_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C6.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 005_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C7.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 006_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C8.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 007_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C9.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 008_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C10.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 009_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C11.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 010_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C12.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 011_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C13.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 012_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C14.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 013_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C15.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 014_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C16.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 015_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C17.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 016_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C18.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 017_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C19.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 018_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C20.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 019_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C21.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 020_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C22.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 021_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C23.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 022_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C24.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 023_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C25.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 024_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C26.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 025_sd.wav');
            });

          }
          
          ),
            FlatButton(
                child:Image.asset('assets/C27.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 026_sd.wav');
            });

          }
          ),
          
            FlatButton(
                child:Image.asset('assets/C28.jpg',fit: BoxFit.fill ),
                
             onPressed: () {
            setState(() {
              player.play('Voice 027_sd.wav');
            });

          }
          )
          
         
        ]
            )

    );
  }
}

