import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  someBasicFn(){
     Stream.fromIterable(['loic', 'fonkam', 'lje']).interval(Duration(seconds: 1)).listen(print);
  }
  
  @override
  Widget build(BuildContext context) {
    someBasicFn();
    return MaterialApp(home: Scaffold(
      body: Center(child: Text('Hello')),
    ));
  }
}
