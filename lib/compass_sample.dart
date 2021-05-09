import 'package:flutter/material.dart';
import 'package:flutter_test_app/utils/compass.dart';
import 'package:provider/provider.dart';

class CompassSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Compass>(
      create: (_) => Compass(),
      child: Consumer<Compass>(
        builder: (context, compass, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Compass sample'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(compass.angle.toString()),
                  Transform.rotate(
                    angle: compass.angle,
                    child: Image.asset('assets/compass.png'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
