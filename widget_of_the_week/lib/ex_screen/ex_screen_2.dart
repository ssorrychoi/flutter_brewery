import 'package:flutter/material.dart';

class ExScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.yellow,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            width: 300,
            height: 200,
            color: Colors.lime,
            child: Center(
              child: Text(
                'Ex_Screen2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              height: 120,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
