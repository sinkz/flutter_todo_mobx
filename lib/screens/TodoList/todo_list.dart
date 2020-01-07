import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_app/controller/TodoList/todo_list_controller.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/screens/TodoList/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> _list = <Todo>[];
  final controller = TodoListcontroller();

  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                      labelText: "Enter a task",
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    controller.add(value: taskController.text);
                  },
                  child: Text("ADD"),
                  color: Colors.blue,
                  textColor: Colors.white,
                )
              ],
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Observer(builder: (_) {
                  return ListView.builder(
                    itemCount: controller.list.length,
                    itemBuilder: (context, index) => Dismissible(
                      background: Container(color: Colors.red),
                      key: Key("$index"),
                      onDismissed: (direction) {
                        controller.remove(index: index);
                        Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "${controller.list[index].name} dismissed")));
                      },
                      child: TodoItem(controller.list[index]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
