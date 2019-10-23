import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key key, this.title, this.completed, this.userId})
      : super(key: key);

  final String title;
  final bool completed;
  final int userId;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(userId.toString()),
        trailing: Checkbox(
          value: completed,
          onChanged: (completed) {
            print(!completed);
          },
        ),
      ),
    );
  }
}
