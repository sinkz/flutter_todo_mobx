import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_app/controller/home_controller.dart';

class Home extends StatelessWidget {

  final controller = HomeController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (_){
              return Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.display1,
            ); 
            },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Incrementx',
        child: Icon(Icons.add), 
        onPressed: () {
          controller.increment();
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}