import 'package:flutter/material.dart';

class FirstWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Week'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'First Week',
              style: TextStyle(fontSize: 45),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  color: Colors.red, onPressed: () {}, child: Text('Red')),
              Expanded(
                flex: 1,
                child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {},
                    child: Text('Orange')),
              ),
              FlatButton(
                  color: Colors.yellow,
                  onPressed: () {},
                  child: Text('Yellow')),
              FlatButton(
                  color: Colors.green, onPressed: () {}, child: Text('Green')),
            ],
          ),
          Wrap(
            children: <Widget>[
              SizedBox(
                width: 200,
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text('Blue'),
                ),
              ),
              SizedBox(
                width: 250,
                child: FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () {},
                  child: Text('Navy'),
                ),
              ),
              SizedBox(
                width: 300,
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {},
                  child: Text('Purple'),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  color: Colors.red, onPressed: () {}, child: Text('Red')),
              Opacity(
                opacity: 0,
                child: SizedBox(
                  width: 230,
                  child: FlatButton(
                      color: Colors.lightBlueAccent,
                      onPressed: () {},
                      child: Text('Blue')),
                ),
              ),
              FlatButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Text(
                    'Black',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
