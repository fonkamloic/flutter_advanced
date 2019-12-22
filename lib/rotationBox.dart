import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/OpacityToggle.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _turns;
  double _value;

  @override
  void initState() {
    _turns = 0;
    _value = 0.0;
    super.initState();
  }

  void _onChange(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Name here"),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Slider(
                  value: _value,
                  onChanged: _onChange,
                  min: 0.0,
                  max: 4.0,
                ),
                RotatedBox(
                  quarterTurns: _turns,
                  child: Text("Hello world"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
