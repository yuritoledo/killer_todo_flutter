import 'package:flutter/material.dart';
import 'package:todo_list/todo_list.dart';
// import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo list',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo lista!!'),
        ),
        body: TodoList(),
      ),
    );
  }
}
