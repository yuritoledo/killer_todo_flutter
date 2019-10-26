import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

typedef TodoCallback = Function(Todo, bool);

class TodoList extends StatelessWidget {
  TodoList({@required this.todos, @required this.onTodoToggle});

  final List<Todo> todos;
  final TodoCallback onTodoToggle;

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
      title: Text(todo.title),
      value: todo.isDone,
      onChanged: (bool isChecked) => onTodoToggle(todo, isChecked),
    );
  }

  @override
  build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
