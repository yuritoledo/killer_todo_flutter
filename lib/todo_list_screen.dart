import 'package:flutter/material.dart';
import 'package:todo_list/new_todo_dialog.dart';
import 'package:todo_list/todo.dart';
import 'package:todo_list/todo_list.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todos = [];

  _addTodo() async {
    final todo = await showDialog(
        context: context, builder: (context) => NewTodoDialog());

    if (todo != null) {
      setState(() => todos.add(todo));
    }
  }

  _toggleTodo(Todo todo, bool isChecked) {
    setState(() => todo.isDone = isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo list'),
      ),
      body: TodoList(todos: todos, onTodoToggle: _toggleTodo),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }
}
