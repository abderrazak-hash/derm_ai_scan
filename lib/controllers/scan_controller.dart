import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class TypeClassificationController extends ChangeNotifier {
  Future<String> classifyDisease(String imagePath) async {
    String type = '';
    loadModel();
    List<dynamic>? output = await Tflite.runModelOnImage(
      path: imagePath,
      numResults: 45,
      imageMean: 20,
      imageStd: 240.0,
    );
    type = output.toString();
    Tflite.close();
    return type;
  }

  static void loadModel() async {
    await Tflite.loadModel(
      model: "assets/models/.tflite",
      labels: "assets/models/.txt",
    );
  }
}
