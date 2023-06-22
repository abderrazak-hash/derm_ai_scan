import 'package:derm_ai_scan/controllers/login_controller.dart';
import 'package:derm_ai_scan/controllers/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider<LoginController>(
    create: (context) => LoginController(),
  ),
  ChangeNotifierProvider<ImageController>(
    create: (context) => ImageController(),
  ),
];
