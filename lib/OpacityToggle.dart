import 'package:flutter/material.dart';

Container OpacityToggle(bool visible, Function toggleVisible) {
  return Container(
    padding: EdgeInsets.all(32.0),
    child: Column(
      children: <Widget>[
        Opacity(
          opacity: visible ? 1.0 : 0.2,
          child: Text("Now you see me now you don't!"),
        ),
        RaisedButton(
          onPressed: toggleVisible,
          child: Text("Toggle"),
        ),
      ],
    ),
  );
}
