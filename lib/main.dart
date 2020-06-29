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

Color componentsColor = Color(0xFFEFF8E2);
Color backgroundColor = Color(0xFFFDFFFC);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
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
          style: TextStyle(
              fontSize: 28, fontFamily: 'k2d', color: backgroundColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                sendButton(width),
                recieveButton(width),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget sendButton(double width) {
    return Container(
      width: (width - 40) / 2.3,
      height: width / 3,
      decoration: BoxDecoration(
        color: componentsColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              spreadRadius: 3,
              offset: Offset.zero,
              color: Colors.grey.withOpacity(0.4))
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: width / 30,
          ),
          Text(
            'Send Files',
            style: TextStyle(fontFamily: 'k2d', fontSize: width / 17),
          ),
          SizedBox(
            height: width / 30,
          ),
          Icon(
            Icons.send,
            size: width / 7,
          )
        ],
      ),
    );
  }

  Widget recieveButton(double width) {
    return Container(
      width: (width - 40) / 2.3,
      height: width / 3,
      decoration: BoxDecoration(
        color: componentsColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              spreadRadius: 3,
              offset: Offset.zero,
              color: Colors.grey.withOpacity(0.4))
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: width / 30,
          ),
          Text(
            'Recieve Files',
            style: TextStyle(fontFamily: 'k2d', fontSize: width / 17),
          ),
          SizedBox(
            height: width / 30,
          ),
          Icon(
            Icons.file_download,
            size: width / 7,
          )
        ],
      ),
    );
  }
}
