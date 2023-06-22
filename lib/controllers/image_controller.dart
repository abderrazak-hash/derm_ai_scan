import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends ChangeNotifier {
  String? image;

  initImage() {
    image = null;
    notifyListeners();
  }

  final ImagePicker _imagePicker = ImagePicker();

  void pickImage() async {
    final res = await _imagePicker.pickImage(source: ImageSource.camera);
    if (res != null) {
      image = res.path;
      notifyListeners();
    }
  }
}
