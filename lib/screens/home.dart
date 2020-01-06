import 'package:flutter/material.dart';
import 'package:todo_app/screens/TodoList/todo_list.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx TODO"),
      ),
      body: TodoList());
  }
}