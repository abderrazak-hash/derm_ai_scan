import 'dart:developer';

import 'package:derm_ai_scan/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  late TextEditingController emailController, passwordController;

  LoginController () {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<bool> login() async {
    try {
      await AuthService.loginUser(
        email: emailController.value.text,
        password: passwordController.value.text,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
