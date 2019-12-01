import 'package:flutter/material.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomSplash(
          imagePath: 'images/smile.png',
          backGroundColor: Colors.white,
          animationEffect: 'fade-in',
          logoSize: 200,
          duration: 2500,
          home: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Homepage")),
      ),
    );
  }
}
