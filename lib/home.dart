import 'package:flutter/material.dart';
import 'package:flutter_test_app/googlemap_sample.dart';

import 'back_drop_filter_sample.dart';
import 'package:flutter_test_app/compass_sample.dart';

import 'geolocator_sample.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('BackDropFilter'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BackDropFilterSample()),
                )
              },
            ),
            ElevatedButton(
              child: Text('Compass'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompassSample()),
                )
              },
            ),
            ElevatedButton(
              child: Text('Geolocator'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeolocatorSample()),
                )
              },
            ),
            ElevatedButton(
              child: Text('Google Map'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoogleMapSample()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
