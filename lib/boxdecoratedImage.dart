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
                Text('Sun Shine'),
                Container(
                  child: Image(
                    image: AssetImage(
                      'images/smile.jpeg',
                    ),
                  ),
                  padding: EdgeInsets.all(32.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2.0),
                      gradient: RadialGradient(
                          colors: <Color>[Colors.red, Colors.yellow])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
