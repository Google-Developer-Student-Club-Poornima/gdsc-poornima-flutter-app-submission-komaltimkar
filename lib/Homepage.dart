import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
 /final int id;
  final String title;
  final DateTime creationDate;
  bool isChecked;
  final Function insertFunction;
  final Function deleteFunction;

  var textController=TextEditingController();
   Homepage({
     required this.id,
     required this.title,
     required this.creationDate,
     required this.isChecked,
     required this.insertFunction,
     required this.deleteFunction
     ,Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/lo.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
      body:Row(
        children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
        child: Checkbox(
      value:widget.isChecked ,
        onChanged: (bool? value){
        setState(() {
          widget.isChecked=value!;
        });
        }
        ,),),
      Expanded(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:390),
            Text('Title text',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
            const SizedBox(height: 0),
            Text('date',
            style: TextStyle(fontSize:16,
            fontWeight: FontWeight.bold,
            color:const Color(0xFF8F8F8f)),),
          ],
        ),
      ),
      IconButton(
        onPressed:(){},
        icon:const Icon(Icons.close),
      ),
          SizedBox(width:2,height: 480,),
          Expanded(
              child:Container(
                padding: const EdgeInsets.only(left: 5 ,top:150),
                child:TextField(
                  //  controller: textController,
                  decoration: const InputDecoration(
                      hintText: '/',
                      border: InputBorder.none
                  ),
                ),
              )),
          SizedBox(width: 46,height: 500,),
          GestureDetector(onTap:(){},
              child:Container(
                color: Colors.grey,
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                child:Container(
                  child: const Text('Add',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              )
          )
],



      )
      )
    );
  }
}
