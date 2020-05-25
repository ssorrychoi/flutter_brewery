import 'package:flutter/material.dart';

class TableEx extends StatefulWidget {
  @override
  _TableExState createState() => _TableExState();
}

class _TableExState extends State<TableEx> {
  double iconSize = 40;
  bool _clicked = false;
  Color _clickedColor = Colors.blueAccent;
  Color _defaultColor = Colors.black;
  Color _holidayColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TableEx')),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Center(
              child: Text('June'),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Table(
            border: TableBorder.symmetric(),
            children: [
              TableRow(children: [
                Center(child: Text('Sun')),
                Center(child: Text('Mon')),
                Center(child: Text('Tue')),
                Center(child: Text('Wed')),
                Center(child: Text('Thu')),
                Center(child: Text('Fri')),
                Center(child: Text('Sat')),
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '1',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '2',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '3',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '4',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '5',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _clicked = !_clicked;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: Text(
                      '6',
                      style: TextStyle(
                          color: _clicked ? _clickedColor : _defaultColor),
                    )),
                  ),
                ),
              ]),
              TableRow(children: [
                Center(child: Text('7')),
                Center(child: Text('8')),
                Center(child: Text('9')),
                Center(child: Text('10')),
                Center(child: Text('11')),
                Center(child: Text('12')),
                Center(child: Text('13')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
