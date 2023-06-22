
import 'package:derm_ai_scan/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  late TextEditingController nameController,
      phoneController,
      emailController,
      passwordController;

  LoginController() {
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<bool> signup() async {
    try {
      await AuthService.signupUser(
        email: emailController.value.text,
        password: passwordController.value.text,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
