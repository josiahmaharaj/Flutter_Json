class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({this.userId, this.id, this.title, this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }
}


class TodoList{
  final List<Todo> todos;
  TodoList({this.todos});

  factory TodoList.fromJson(List<dynamic> json){
    List<Todo> todos = new List<Todo>();
    todos = json.map((i)=>Todo.fromJson(i)).toList();

    return new TodoList(todos: todos);
  }
}