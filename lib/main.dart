import 'package:flutter/material.dart';
import 'package:todo_list/todo_list_screen.dart';
// import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list',
      home: TodoListScreen(),
    );
  }
}
