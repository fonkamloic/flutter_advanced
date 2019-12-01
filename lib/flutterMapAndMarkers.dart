import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var markers = <Marker>[
      Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(41.8781, -87.6298),
        builder: (ctx) => Icon(Icons.pin_drop, color: Colors.red),
      ),
      Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(42.8781, -83.0458),
        builder: (ctx) => Icon(Icons.pin_drop, color: Colors.red),
      ),
      Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(41.7381, -84.5555),
        builder: (ctx) => Icon(Icons.pin_drop, color: Colors.red),
      ),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Name here"),
        ),
        body: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: FlutterMap(
                    options: MapOptions(
                        center: LatLng(41.8781, -87.6298), zoom: 5.0),
                    layers: [
                      TileLayerOptions(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c']),
                      MarkerLayerOptions(markers: markers),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
