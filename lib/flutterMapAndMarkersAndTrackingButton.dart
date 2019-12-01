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
  MapController mapController;
  Map<String, LatLng> coords;
  List<Marker> markers;

  @override
  void initState() {
    mapController = MapController();
    coords = Map<String, LatLng>();
    coords.putIfAbsent("Chicago", () => LatLng(41.8781, -87.6298));
    coords.putIfAbsent("Detroit", () => LatLng(42.3314, -83.0458));
    coords.putIfAbsent("Lansing", () => LatLng(42.7325, -84.5555));

    markers = List<Marker>();
    for (int i = 0; i < coords.length; i++) {
      markers.add(Marker(
        width: 80.0,
        height: 80.0,
        point: coords.values.elementAt(i),
        builder: (ctx) => Icon(
          Icons.pin_drop,
          color: Colors.red,
        ),
      ));
    }
    super.initState();
  }

  void _showCoord(int index) {
    mapController.move(coords.values.elementAt(index), 10.0);
  }

  List<Widget> _makeButtons() {
    List<Widget> list = List<Widget>();

    for (int i = 0; i < coords.length; i++) {
      list.add(
        RaisedButton(
          onPressed: () => _showCoord(i),
          child: Text(
            coords.keys.elementAt(i),
          ),
        ),
      );
    }
    return list;
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
              children: <Widget>[
                Row(
                  children: _makeButtons(),
                ),
                Flexible(
                  child: FlutterMap(
                    mapController: mapController,
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
