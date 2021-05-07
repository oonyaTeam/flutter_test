import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArCoreSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ArCoreSampleState();
}

class _ArCoreSampleState extends State<ArCoreSample> {

  ArCoreController arCoreController;

  @override
  Widget build(BuildContext context) {
    return ArCoreView(
      onArCoreViewCreated: _onArCoreViewCreated,
    );
  }

  void _onArCoreViewCreated (ArCoreController controller) {
    arCoreController = controller;

    _addSphere(arCoreController);
    _addCylindre(arCoreController);
    _addCube(arCoreController);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  void _addSphere(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244)
    );
    final sphere = ArCoreSphere(
      materials: [material],
      radius: 0.1,
    );
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -1.5),
    );
    controller.addArCoreNode(node);
  }

  void _addCylindre(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244)
    );
    final sphere = ArCoreSphere(
      materials: [material],
      radius: 0.1,
    );
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -1.5),
    );
    controller.addArCoreNode(node);
  }

  void _addCube(ArCoreController controller) {
    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244),
      metallic: 1.0,
    );
    final cube = ArCoreCube(
      materials: [material],
      size: vector.Vector3(0.5, 0.5, 0.5),
    );
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(-0.5, 0.5, -3.5),
    );
    controller.addArCoreNode(node);
  }

}

