import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todos = [
    Todo(title: 'Agora vai 1'),
    Todo(title: 'Agora vai 2'),
    Todo(title: 'Agora vai 3'),
  ];

  _toggleTodo(Todo todo, bool isChecked) {
    print('${todo.title} is ${todo.isDone}');
    setState(() {
      todo.isDone = isChecked;
    });
  }

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
      title: Text(todo.title),
      value: todo.isDone,
      onChanged: (bool isChecked) {
        _toggleTodo(todo, isChecked);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
