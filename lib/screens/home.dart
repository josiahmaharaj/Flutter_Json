import 'package:flutter/material.dart';

import '../services/jasonplaceholder.dart';
import '../models/Todo.dart';

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
                return ListTile(
                  title: Text(snapshot.data.todos[index].title),
                );
              },
            );
          }
        },
      ),
    );
  }
}
