import 'package:flutter/material.dart';
import 'package:widget_of_the_week/ex_screen/ex_screen_1.dart';
import 'package:widget_of_the_week/ex_screen/ex_screen_2.dart';
import 'package:widget_of_the_week/ex_screen/ex_screen_3.dart';

class PageViewEx extends StatefulWidget {
  @override
  _PageViewExState createState() => _PageViewExState();
}

class _PageViewExState extends State<PageViewEx> {
  /// 몇번째 페이지를 메인 페이지로 할건지 선택.
  PageController _controller = PageController(initialPage: 1);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
//        scrollDirection: Axis.vertical,
        children: <Widget>[ExScreen1(), ExScreen2(), ExScreen3()],
      ),
    );
  }
}
