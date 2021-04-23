import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'hello world',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.black;
  get color => _color;
  set color(value) => setState(() => _color = value);
  double _size = 50.0;
  get size => _size;
  set size(value) => setState(() => _size = value);

  @override
  Widget build(BuildContext context) {
    var floatingActionButton2 = FloatingActionButton.extended(
      onPressed: () => color = Colors.red,
      label: Text('Red'),
      backgroundColor: Colors.red,
    );
    return Scaffold(
      body: Center(
        child: Text(
          'hello world',
          style: TextStyle(color: _color, fontSize: size),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          floatingActionButton2,
          FloatingActionButton.extended(
              onPressed: () => color = Colors.blue,
              label: Text('Blue'),
              backgroundColor: Colors.blue)
        ],
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: Slider(
          value: size,
          min: 10,
          max: 100,
          onChanged: (value) => size = value,
        ),
      ),
    );
  }
}
/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hello world'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Red'),
            backgroundColor: Colors.red,
          ),
          FloatingActionButton.extended(
              onPressed: () {},
              label: Text('Blue'),
              backgroundColor: Colors.blue) 
        ],
      ),
    );
  }
}*/
