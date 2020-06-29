import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color(0xFF2A193E),
                Color(0xFF573280),
              ])),
        ),
        title: Text(
          'Share',
          style: TextStyle(fontSize: 28, fontFamily: 'k2d'),
        ),
      ),
      body: Container(
        color: Color(0xFFFDFFFC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[sendButton(), recieveButton()],
        ),
      ),
    );
  }

  Widget sendButton() {
    return Container();
  }

  Widget recieveButton() {
    return Container();
  }
}
