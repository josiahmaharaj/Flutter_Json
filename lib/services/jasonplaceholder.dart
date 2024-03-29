import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Todo.dart';

Future<TodoList> todoApi() async{
  http.Response response = await http.get(
    Uri.encodeFull('http://jsonplaceholder.typicode.com/todos?_start=0&_limit=5')
  );
  if(response.statusCode == 200){
    // print("Response ${response.body.toString()}");
    //return TodoList.fromJson(json.decode(response.body));

    return TodoList.fromJson(json.decode(response.body));
  }
  throw Exception('Failed to load data');
  //print("Response ${response.body.toString()}");
}