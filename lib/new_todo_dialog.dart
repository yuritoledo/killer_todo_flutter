import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

class NewTodoDialog extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Agora vai'),
      content: TextField(
        controller: _controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            final todo = Todo(title: _controller.value.text);
            _controller.clear();
            Navigator.of(context).pop(todo);
          },
        )
      ],
    );
  }
}
