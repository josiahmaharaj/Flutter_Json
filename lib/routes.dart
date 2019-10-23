import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/new-item.dart';

// class Routes{
//   var routes = <String, WidgetBuilder>{
//     "/": (BuildContext context) => Home(),
//     "/newItem": (BuildContext context) => NewItem()
//   };
// }

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/newItem':
        if (args is int) {
          return MaterialPageRoute(builder: (_) => NewItem(userId: args,));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Mobile Equialent of 404!'),
        ),
      );
    });
  }
}
