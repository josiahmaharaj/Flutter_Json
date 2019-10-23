import 'package:flutter/material.dart';
import 'package:todo/components/userCard.dart';
import '../services/jasonplaceholder.dart';
import '../models/User.dart';

class NewItem extends StatefulWidget {
  final int userId;
  NewItem({Key key, this.userId}) : super(key: key);

  @override
  _NewItemState createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
Future<User> user;

@override
void initState() { 
  super.initState();
  user = todoUser(widget.userId);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Item'),
      ),
      body: FutureBuilder<User>(
        future: user,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return UserCard(name: snapshot.data.name,);
          }
        },
      ),
    );
  }
}
