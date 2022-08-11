import 'package:flutter/material.dart';
import 'quiz1.dart';
import 'quiz2.dart';
import 'quiz3.dart';
import 'quiz4.dart';


class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      

      body: Container(

            margin: const EdgeInsets.all(15.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                FlatButton(
                  height: 50.0,
                  color: Colors.blue,
                  onPressed:(){
                    starQuiz();
                  },
                  child: Text('اختبار رقم 1',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Markazi',
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),),
                FlatButton(
                  height: 50.0,
                  color: Colors.blue,
                  onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Quiz2()));
                  },
                  child: Text('اختبار رقم 2',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Markazi',
                  ),
                  ),
                ),
                 Padding(padding: EdgeInsets.all(10),),
                FlatButton(
                  height: 50.0,
                  color: Colors.blue,
                  onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Quiz3()));
                  },
                  child: Text('اختبار رقم 3',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Markazi',
                  ),
                  ),
                ),
                 Padding(padding: EdgeInsets.all(10),),
                FlatButton(
                  height: 50.0,
                  color: Colors.blue,
                  onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Quiz4()));
                  },
                  child: Text('اختبار رقم 4',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontFamily: 'Markazi',
                  ),
                  ),
                ),

              ],
            ),
      ),
    );
  }



void starQuiz(){
  setState(() {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Quiz1()));
});
}

}