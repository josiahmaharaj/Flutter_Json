import 'package:flutter/material.dart';
import '../routes.dart';

import '../services/jasonplaceholder.dart';
import '../models/Todo.dart';
import '../components/todoCard.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<TodoList> todo;
  @override
  void initState() {
    super.initState();
    todo = todoApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Todo List'),
      ),
      body: FutureBuilder<TodoList>(
        future: todo,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.todos.length,
              itemBuilder: (context, index) {
                return TodoCard(
                  title: snapshot.data.todos[index].title,
                  completed: snapshot.data.todos[index].completed,
                  userId: snapshot.data.todos[index].id,
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text('NEW ITEM'),
        onPressed: () {
          Navigator.pushNamed(context, '/newItem', arguments: 1);
        },
      ),
    );
  }
}
