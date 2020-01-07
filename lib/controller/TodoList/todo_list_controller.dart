
import 'package:mobx/mobx.dart';
import 'package:todo_app/model/todo.dart';
part 'todo_list_controller.g.dart';

class TodoListcontroller = TodoListcontrollerBase with _$TodoListcontroller;

abstract class TodoListcontrollerBase with Store{

  @observable
  ObservableList<Todo> list = ObservableList<Todo>();

  @action
  add({value}){
    Todo todo = Todo(name: value, isOppened: true);
    list.add(todo);
    print(list);
  }

  @action
  remove({index}){
    list.removeAt(index);
  }

}