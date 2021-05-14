import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class Compass with ChangeNotifier {
  double _angle = 0;
  get angle => _angle;

  Compass() {
    FlutterCompass.events.listen((value) {
      _angle = -1 * pi * (value.heading / 100);
    });

    notifyListeners();
  }
}