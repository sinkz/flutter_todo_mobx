import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter a task",
              border: InputBorder.none
            ),
          )
        ],
      ),
    );
  }
}