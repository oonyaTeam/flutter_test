import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapSample extends StatefulWidget {
  @override
  _GoogleMapSampleState createState() => _GoogleMapSampleState();
}

class _GoogleMapSampleState extends State<GoogleMapSample> {

  GoogleMapController _mapController;

  // LatLng _currentLatLng;

  void _onMapCreated (GoogleMapController controller) {
    setState(() {
      _mapController = controller;

      _mapController.animateCamera(CameraUpdate.newCameraPosition(
        const CameraPosition(target: LatLng(0, 0))
      ));
    });
  }

  // Future<void> _getCurrentLatLng () async {
  //   Position position = await Geolocator.getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.high,
  //   );
  //   setState(() {
  //     _currentLatLng = LatLng(position.latitude, position.longitude);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoogleMap sample'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(0, 0),
            zoom: 17.0,
          ),
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
