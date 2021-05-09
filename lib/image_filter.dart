import 'package:flutter/material.dart';

class ImageFilter extends StatefulWidget {

  @override
  _ImageFilterState createState() => _ImageFilterState();
}

class _ImageFilterState extends State<ImageFilter> {

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
            Image.asset('assets/flutter.png'),
          ],
        ),
      ),
    );
  }
}
