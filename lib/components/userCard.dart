import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {Key key,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website,
      this.street,
      this.suite,
      this.city,
      this.zipcode,
      this.compname,
      this.bs,
      this.catchphrase
      })
      : super(key: key);

  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String compname;
  final String catchphrase;
  final String bs;

  @override
  Widget build(BuildContext context) {
    return ListView(
          children:<Widget>[ Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 30.0),
        child: Column(
          children: <Widget>[
            Text(name),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(top:20.0, bottom: 20.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('@' + username),
                      Text(email),
                      Text(phone),
                      Text(website)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(top:20.0, bottom: 20.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(street),
                      Text(suite),
                      Text(city),
                      Text(zipcode)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(top:20.0, bottom: 20.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(compname),
                      Text(catchphrase),
                      Text(bs),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),],
    );
  }
}
