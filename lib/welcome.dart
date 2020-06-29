import 'package:fileshare/services/db.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/Username.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String _userName;
  List<TodoItem> _tasks = [];

  TextStyle _style = TextStyle(color: Colors.red, fontSize: 24);
  List<Widget> get _items => _tasks.map((item) => format(item)).toList();
  Widget format(TodoItem item) {
    return Dismissible(
      key: Key(item.userName.toString()),
      child: Padding(
          padding: EdgeInsets.fromLTRB(12, 6, 12, 4),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item.userName, style: _style),
              ])),
    );
  }

  @override
  void initState() {
    DB.init();
    refresh();
    super.initState();
  }

  void refresh() async {
    List<Map<String, dynamic>> _results = await DB.query(TodoItem.table);
    _tasks = _results.map((item) => TodoItem.fromMap(item)).toList();
    setState(() {
      print("refresh");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: 'User Name', hintText: 'e.g. TomRiddle'),
              onChanged: (value) {
                _userName = value;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: InkWell(
                onTap: _save,
                child: Container(
                  color: Colors.deepPurple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Save"),
                  ),
                ),
              ),
            ),
//            Expanded(child: ListView(children: _items)),
          ],
        ),
      ),
    );
  }

  void _save() async {
    TodoItem item = TodoItem(userName: _userName);

    await DB.insert(TodoItem.table, item);
    setState(() => print("done"));
    refresh();
  }
}
