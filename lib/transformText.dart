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
  double _x, _y, _z;

  @override
  void initState() {
    _x = 0.0;
    _y = 0.0;
    _z = 0.0;
    super.initState();
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
                Row(
                  children: <Widget>[
                    Text("X"),
                    Slider(
                      value: _x,
                      onChanged: (double value) => setState(() => _x = value),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Y"),
                    Slider(
                      value: _y,
                      onChanged: (double value) => setState(() => _y = value),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Z"),
                    Slider(
                      value: _z,
                      onChanged: (double value) => setState(() => _z = value),
                    ),
                  ],
                ),
                Transform(
                  transform: Matrix4.skewY(_y),
                  child: Transform(
                    transform: Matrix4.skewY(_x),
                    child: Transform(
                      transform: Matrix4.rotationZ(_z),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Hello world"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
