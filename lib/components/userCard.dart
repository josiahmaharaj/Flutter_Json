import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key key, this.name, this.username, this.email, this.phone, this.website, this.street, this.suite, this.city, this.zipcode}) : super(key: key);

  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(child: Center(child: Column(children: <Widget>[
        Text(name),
        Text(username),
        Text(email)
      ],),),)
    ],);
  }
}