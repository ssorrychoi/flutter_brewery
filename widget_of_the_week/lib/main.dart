import 'package:flutter/material.dart';
import 'package:widget_of_the_week/screen/clip_r_rect.dart';
import 'package:widget_of_the_week/screen/fade_in_image.dart';
import 'package:widget_of_the_week/screen/first_week.dart';
import 'package:widget_of_the_week/screen/page_view_ex.dart';
import 'package:widget_of_the_week/screen/second_class.dart';
import 'package:widget_of_the_week/screen/sliver_list.dart';
import 'package:widget_of_the_week/screen/sliverappbar.dart';
import 'package:widget_of_the_week/screen/table.dart';

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
          Container(
            width: 300,
            child: FlatButton(
              child: Text('1st week Start'),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstWeek()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('2nd Class'),
              color: Colors.orange,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondClass()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('PageView'),
              color: Colors.yellow,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageViewEx()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('Table'),
              color: Colors.greenAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TableEx()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('SliverAppBar'),
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SliverAppBarEx()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('SliverList'),
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SliverListEx()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('FadeInImage'),
              color: Colors.lightGreenAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FadeInImageEx()));
              },
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            width: 300,
            child: FlatButton(
              child: Text('ClipRRect'),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoundedImage()));
              },
            ),
          ),

        ],
      )),
    );
  }
}
