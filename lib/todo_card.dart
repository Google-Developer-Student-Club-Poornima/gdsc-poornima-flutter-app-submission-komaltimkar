import 'package:flutter/material.dart';
class Todocard extends StatefulWidget {
  const Todocard({Key? key}) : super(key: key);

  @override
  State<Todocard> createState() => _TodocardState();
}

class _TodocardState extends State<Todocard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child:Row(
        children: [
          Container(child: Checkbox(
            value:false ,
            onChanged: (bool? value){}
            ,),),
          Expanded(
              child: Column(
                children: [
                  //Text('TITLE'),
                  const SizedBox(height: 10),
                    Text('date'),
                ],
              ),
    ),
          IconButton(
            onPressed:(){},
            icon:const Icon(Icons.close),
          ),
        ],
      )
    );
  }
}
