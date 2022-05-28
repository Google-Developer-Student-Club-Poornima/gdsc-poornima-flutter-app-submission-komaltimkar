import 'package:app_try/d.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);
  @override
  State<MyPage> createState() => _MyPageState();
}
class _MyPageState extends State<MyPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/dashboar.png'), fit: BoxFit.cover),
        ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
        body:Padding(
          padding: EdgeInsets.fromLTRB(50.0, 100.0, 30.0, 0.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children:<Widget> [
                 Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 60.0,
              ),
            ),
      Container(
        padding:EdgeInsets.only(left: 100, top:25),
      child: Text(
        'Hi, Elsa',
        style: TextStyle(color: Colors.purpleAccent[250], fontSize: 35, fontWeight:FontWeight.bold),
      ),
    ),
                 SizedBox(
                   height: 90,
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [

                     Text(
                       'SET TIMER',
                       style: TextStyle(
                           fontSize: 38, fontWeight: FontWeight.w700),
                     ),
                     CircleAvatar(
                       radius: 30,
                       backgroundColor: Color(0xff4c505b),
                       child: IconButton(
                           color: Colors.white,
                           onPressed: ()
                           {
                             Navigator.pushNamed(context,'time');
                           },
                           icon: Icon(
                             Icons.arrow_forward,
                           )),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 90,
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [

                     Text(
                       'TO DO LIST',
                       style: TextStyle(
                           fontSize: 38, fontWeight: FontWeight.w700),
                     ),
                     CircleAvatar(
                       radius: 30,
                       backgroundColor: Color(0xff4c505b),
                       child: IconButton(
                           color: Colors.white,
                           onPressed: ()
                           {
                             Navigator.pushNamed(context,'Homepage');
                           },
                           icon: Icon(
                             Icons.arrow_forward,
                           )),
                     )
                   ],
                 ),


    ],
    ),
    ),
        )

    );
  }
}



