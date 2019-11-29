import 'package:flutter/material.dart';
import 'package:flutter_advanced/OpacityToggle.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _visible;

  @override
  void initState() {
    _visible = true;
    super.initState();
  }

  void _toggleVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Name here"),
        ),
        body: OpacityToggle(_visible, _toggleVisible),
      ),
    );
  }
}
