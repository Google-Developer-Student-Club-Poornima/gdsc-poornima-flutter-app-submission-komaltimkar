import 'package:flutter/material.dart';
import 'package:app_try/Homepage.dart';
import 'package:app_try/model.dart';
import 'package:app_try/d.dart';
import 'todo_card.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var db=DatabaseConnect();
  await db.insertTodo(Todo(
      id:1,
      title: 'this is the sample todo',
    creationDate: DateTime.now(),
    isChecked: false
  ));
  print(await db.getTodo());
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Homepage(// Todo_card(),
      ),

    );
  }
}
