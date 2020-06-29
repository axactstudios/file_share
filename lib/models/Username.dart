import 'model.dart';

class TodoItem extends Model {
  static String table = 'todo_items';

  String userName;
  bool complete;

  TodoItem({this.userName, this.complete});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {'userName': userName, 'complete': complete};

    if (userName != null) {
      map['UserName'] = userName;
    }
    return map;
  }

  static TodoItem fromMap(Map<String, dynamic> map) {
    return TodoItem(userName: map['userName'], complete: map['complete'] == 1);
  }
}
