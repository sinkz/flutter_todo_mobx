import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo _todo;

  TodoItem(this._todo);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ListTile(
            title: Text(
              _todo.name,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      );
}
