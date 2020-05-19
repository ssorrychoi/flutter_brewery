import 'package:flutter/material.dart';
import 'package:widget_of_the_week/screen/first_week.dart';
import 'package:widget_of_the_week/screen/second_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget of the Week'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('This is Widget of the week')),
          FlatButton(
            child: Text('1st week Start'),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstWeek()));
            },
          ),
          SizedBox(
            width: 100,
          ),
          FlatButton(
            child: Text('2nd Class'),
            color: Colors.yellow,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondClass()));
            },
          )
        ],
      )),
    );
  }
}
