import 'package:flutter/material.dart';

class ExScreen1 extends StatelessWidget {
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
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            width: 300,
            height: 200,
            color: Colors.redAccent,
            child: Center(
              child: Text(
                'Ex_Screen1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              height: 120,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
