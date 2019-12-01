import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 5000), vsync: this);
    animation = Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addListener(() {
      setState(() {
        //the state of the animation has changed
      });
    });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
          height: animation.value,
          width: animation.value,
          child: Center(
            child: Image.asset("images/smile.png"),
          ),
        ),
      ),
    );
  }
}
