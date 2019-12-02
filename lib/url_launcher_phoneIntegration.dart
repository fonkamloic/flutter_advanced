import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _showUrl() {
    _launch("http://www.google.com");
  }

  void _showEmail() {
    _launch("mailto:fonkamloic@gmail.com");
  }

  void _showTelephone() {
    _launch("tel:237-699-549-092");
  }

  void _showSms() {
    _launch("sms:237-699-549-092");
  }

  void _launch(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw "Could not launch Url";
    }
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _showUrl,
                  child: Text("URL"),
                ),
                RaisedButton(
                  onPressed: _showEmail,
                  child: Text("Email"),
                ),
                RaisedButton(
                  onPressed: _showSms,
                  child: Text("Sms"),
                ),
                RaisedButton(
                  onPressed: _showTelephone,
                  child: Text("Call"),
                ),
              ],
            )),
      ),
    );
  }
}
