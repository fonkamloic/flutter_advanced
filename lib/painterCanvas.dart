import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/OpacityToggle.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //All our work will be done

    final radius = 100.0;
    final Offset offset = Offset(0.0, 75.0);
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.blue[500]
      ..style = PaintingStyle.stroke;

    final Offset bodystart = Offset(00, 50.0);
    final Offset bodyend = Offset(0.0, 0.0);

    canvas.drawCircle(offset, radius, paint);
    canvas.drawLine(bodystart, bodyend, paint);

    final Rect rect = Rect.fromCircle(center: offset, radius: radius);
    final Paint rectpaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.orange
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect, rectpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class _MyAppState extends State<MyApp> {
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
                Text(
                  "Hello",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                CustomPaint(
                  painter: _painter(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
