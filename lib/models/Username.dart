import 'model.dart';

class TodoItem extends Model {
  static String table = 'user_names';

  String userName;

  TodoItem({this.userName});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {'userName': userName};

    if (userName != null) {
      map['UserName'] = userName;
    }
    return map;
  }

  static TodoItem fromMap(Map<String, dynamic> map) {
    return TodoItem(userName: map['userName']);
  }
}
