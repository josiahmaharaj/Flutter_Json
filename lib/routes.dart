import 'package:flutter/material.dart';
import 'screens/home.dart';

class Routes{
  var routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => Home()
  };
}