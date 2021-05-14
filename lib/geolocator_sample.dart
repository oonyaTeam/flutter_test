import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_compass/flutter_compass.dart';

class GeolocatorSample extends StatefulWidget {
  @override
  _GeolocatorSampleState createState() => _GeolocatorSampleState();
}

class _GeolocatorSampleState extends State<GeolocatorSample> {
  String _location = "no data";

  String _compass = "no compass";

  Future<void> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    setState(() {
      _location = position.toString();
    });
  }

  Future<void> getCompass () async {
    final CompassEvent compass = await FlutterCompass.events.first;
    setState(() {
      _compass = compass.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocator sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_location),
            Text(_compass),
            ElevatedButton(
              onPressed: () => getLocation(),
              child: Text('GET LOCATION'),
            ),
            ElevatedButton(
              onPressed: () => getCompass(),
              child: Text('GET COMPASS'),
            ),
          ],
        ),
      ),
    );
  }
}
