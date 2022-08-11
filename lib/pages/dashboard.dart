import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'animation.dart';
import 'clickLetter.dart';
import 'clickPic.dart';
import 'draw.dart';
import 'piano.dart';
import 'match.dart';
import 'quiz.dart';
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        

        children: <Widget>[

        SafeArea(
          child: Padding(
            
            
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child:
                GridView.count(
                  
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  primary: false,
                  
                  children: <Widget>[
                    
                    
                   Card(
                   
                      child: ElevatedButton(         
                        child: Icon(Icons.menu_book,
                                size: 70,
                              ),
                        onPressed: () {
                        Navigator.of(context).push(SlideLeft(Page: ClickLetter()));
                            }
                         ),
                    ),
                    
                   Card(
                   
                      child: ElevatedButton(         
                        child: Icon(Icons.audiotrack,
                                size: 70,
                              ),
                        onPressed: () {
                        Navigator.of(context).push(SlideRight(Page: Piano()));
                            }
                         ),
                    ),
                    

                   Card(
                   
                      child: ElevatedButton(         
                        child: Icon(Icons.photo,
                                size: 70,
                              ),
                        onPressed: () {
                        Navigator.of(context).push(SlideLeft(Page: ClickPic()));
                            }
                         ),
                    ),
                    
                                         
                   Card(
                   
                      child: ElevatedButton(         
                        child: Icon(FlutterIcons.pencil_alt_faw5s,
                                size: 70,
                              ),
                        onPressed: () {
                        Navigator.of(context).push(SlideRight(Page: Draw()));
                            }
                         ),
                    ),
                     
                   Card(
                   
                      child: ElevatedButton(         
                        child: Icon(FlutterIcons.puzzle_piece_faw5s,
                                size: 70,
                              ),
                        onPressed: () {
                        Navigator.of(context).push(SlideLeft(Page: Match()));
                            }
                         ),
                    ),
                     
                   Card(
                   
                      child: ElevatedButton(         
                        child: Icon(FlutterIcons.frequently_asked_questions_mco,
                                size: 70,
                              ),
                        onPressed: () {
                        Navigator.of(context).push(SlideRight(Page: Quiz()));
                            }
                         ),
                    ),
                    
                     
                   
                  ]
              
                ),
                ),
              ],

            ),
            
          ),
          
        )
        ],

      ),
    );
  }
}


