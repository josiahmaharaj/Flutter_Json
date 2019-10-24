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
            print(snapshot.error);
            return Center(
              child: CircularProgressIndicator(),
              // child: Text('x'),
            );
          } else {
            return UserCard(
              name: snapshot.data.name,
              username: snapshot.data.username,
              email: snapshot.data.email,
              phone: snapshot.data.phone,
              website: snapshot.data.website,
              street: snapshot.data.address.street,
              suite: snapshot.data.address.suite,
              city: snapshot.data.address.city,
              zipcode: snapshot.data.address.zipcode,
              compname: snapshot.data.company.name,
              catchphrase: snapshot.data.company.catchPhrase,
              bs: snapshot.data.company.bs,
            );
          }
        },
      ),
    );
  }
}
