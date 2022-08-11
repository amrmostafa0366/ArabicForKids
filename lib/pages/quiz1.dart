import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class PicQuiz{

  var images = [

   'Lion','Duck','Apple','Fox','Carrot','Horse','Sheep'

  ];

  var questions = [

    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  var choices = [

    ['أب','ثلاجة','براد','أسد'],
    ['بطة','بامية','وردة','عين'],
    ['فأر','تفاحة','فيل','جبل'],
    ['قطة','خروف','صورة','ثعلب'],
    ['باب','جزر','ثعبان','حصان'],
    ['حصان','ضابط','ثور','حمار'],
    ['عنكبوت','ثعبان','يد','خروف']
  ];

  var correctAnswers = [

   'أسد','بطة','تفاحة','ثعلب','جزر','حصان','خروف'

  ];



}

var finalScore = 0;
var questionNumber = 0;
var quiz = PicQuiz();


class Quiz1 extends StatefulWidget {
  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
    var player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: ()async => false,
      child: Scaffold(

        body: Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[

              Padding(padding: EdgeInsets.all(20.0)),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
              Text('سؤال ${questionNumber +1} من ${quiz.questions.length}',
              style: TextStyle(

                fontSize: 22.0,
                fontFamily: 'Markazi',
              ),
              ),

              Text('النتيجة: $finalScore',
               style: TextStyle(
                  fontSize:22.0,
                  fontFamily: 'Markazi',
                  
                  ),
                  ),
               ],
                ),
              ),
              
                 Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset('assets/${quiz.images[questionNumber]}.jpg'
              ),

                 Padding(padding: EdgeInsets.all(10.0)),

                 Text(quiz.questions[questionNumber],
                 style: TextStyle(
                   fontSize: 20.0,
                   
                 ),
                 ),
                 Padding(padding: EdgeInsets.all(10.0)),

                 Row(

                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[

                    //button1

                     FlatButton(

                       minWidth: 120.0,
                       color: Colors.blue,
                       onPressed:(){

                       if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                         print('Correct');
                         player.play('clap.wav');
                         finalScore ++;
                       }else{
                         print('Wrong');
                         player.play('wrong.wav');
                       }
                        updateQuetion();
                       },
                       child: Text(quiz.choices[questionNumber][0],
                       style: TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                       )
                       
                       ),

                     ),

                    //button2

                     FlatButton(

                       minWidth: 120.0,
                       color: Colors.blue,
                       onPressed:(){

                       if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                         print('Correct');
                         player.play('clap.wav');
                         finalScore ++;
                       }else{
                         print('Wrong');
                         player.play('wrong.wav');
                       }
                        updateQuetion();
                       },
                       child: Text(quiz.choices[questionNumber][1],
                       style: TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                       )
                       
                       ),

                     ),
                   ],
                 ),
                 
                 Row(

                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[

                    //button3

                     FlatButton(

                       minWidth: 120.0,
                       color: Colors.blue,
                       onPressed:(){

                       if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                         print('Correct');
                         player.play('clap.wav');
                         finalScore ++;
                       }else{
                         print('Wrong');
                         player.play('wrong.wav');
                       }
                        updateQuetion();
                       },
                       child: Text(quiz.choices[questionNumber][2],
                       style: TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                       )
                       
                       ),

                     ),

                    //button4

                     FlatButton(

                       minWidth: 120.0,
                       color: Colors.blue,
                       onPressed:(){

                       if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                         print('Correct');
                         player.play('clap.wav');
                         finalScore ++;
                       }else{
                         print('Wrong');
                         player.play('wrong.wav');
                       }
                        updateQuetion();
                       },
                       child: Text(quiz.choices[questionNumber][3],
                       style: TextStyle(
                         fontSize: 20.0,
                         color: Colors.white,
                       )
                       
                       ),

                     ),
                   ],
                 ),
                 
                 Padding(padding: EdgeInsets.all(15.0)),

                 Container(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                      minWidth: 240.0,
                      height: 30.0,
                      color: Colors.red,
                      onPressed: resetQuiz,
                      child: Text("خروج",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Markazi',
                            color: Colors.white
                        ),)
                  ),
                ),

                 



            ],
          ),
        ),

     
      ),
      
    );
  }
    void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuetion(){

    setState(() {

      if (questionNumber == quiz.questions.length -1){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Summary(score: finalScore)));
      }else{
        questionNumber ++;
      }
      
    });
  }
}

class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: Container(
          alignment: Alignment.center,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[

               Text("النتيجة النهائية: $score",
                style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'Markazi',
                ),),

               Padding(padding: EdgeInsets.all(30.0)),

               FlatButton(
                color: Colors.red,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: Text("اعادة الاختبار",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Markazi',
                      color: Colors.white
                  ),),),
                   FlatButton(
                color: Colors.red,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DashBoard()));
                },
                child: Text('خروج',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Markazi',
                      color: Colors.white
                  ),),),


            ],
          ),
        ),


      ),
    );
  }


}