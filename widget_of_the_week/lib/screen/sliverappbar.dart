import 'package:flutter/material.dart';
import 'dart:math';

class SliverAppBarEx extends StatefulWidget {
  @override
  _SliverAppBarExState createState() => _SliverAppBarExState();
}

class _SliverAppBarExState extends State<SliverAppBarEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("SliverAppBar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://img.insight.co.kr/static/2017/01/17/700/626K4KSUHT0FL029P107.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Center(child: Text('SSORRY_CHOI'))),
    );
  }
}
