import 'package:flutter/material.dart';
import 'package:flutter_3d_obj/flutter_3d_obj.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('3D Touchable Model'),
        ),
        body: Touch3DModel());
  }
}

class Touch3DModel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Touch3DModelState();
  }
}

class Touch3DModelState extends State<Touch3DModel> {
  double x_coord = 100.0;
  double y_coord = 100.0;

  void onTapDown(BuildContext context, TapDownDetails details) {
    print('${details.globalPosition}');
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      x_coord = localOffset.dx;
      y_coord = localOffset.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) => onTapDown(context, details),
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Container(color: Colors.grey),
        Positioned(
          child: Object3D(
            size: const Size(200.0, 200.0),
            path: "assets/file.obj",
            asset: true,
          ),
          left: x_coord,
          top: y_coord,
        )
      ]),
    );
  }
}
