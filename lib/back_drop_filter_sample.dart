import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterSample extends StatefulWidget {
  @override
  _BackDropFilterSampleState createState() => _BackDropFilterSampleState();
}

class _BackDropFilterSampleState extends State<BackDropFilterSample> {
  double sigma = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageFilter sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Image.asset('assets/flutter.png'),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: sigma,
                      sigmaY: sigma,
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
              ],
            ),
            Slider(
              value: sigma,
              min: 0,
              max: 30,
              onChanged: (newSigma) => {
                setState(() {
                  sigma = newSigma;
                })
              },
            ),
          ],
        ),
      ),
    );
  }
}
