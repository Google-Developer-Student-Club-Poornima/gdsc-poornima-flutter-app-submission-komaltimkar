import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  int timeLeft=60;
  void _startCountDown(){
    Timer.periodic(Duration(seconds: 1),(timer){
      setState(() {
        if(timeLeft>0){
          setState(() {
            timeLeft--;
          });
        }
        else{
          timer.cancel();
        }

      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/log.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,


          body:Container(
              padding: EdgeInsets.only(left:35,top:290.0),
              child:Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text(timeLeft== 0?'DONE': timeLeft.toString() ,

                    style:TextStyle(fontSize:80),),
                  MaterialButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    onPressed: _startCountDown,
                    child:Text('START',
                    style:TextStyle( fontSize: 30,fontWeight: FontWeight.bold)),
                    color: Colors.grey,

                  ),
                 MaterialButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                onPressed: _startCountDown,
                    child:Text('PAUSE',
                     style:TextStyle( fontSize: 30,fontWeight: FontWeight.bold)),
                    color: Colors.grey,
                 ),
                ],
              )
          ),
        )
    );
  }
}
