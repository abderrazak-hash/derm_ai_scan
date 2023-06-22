import 'package:derm_ai_scan/screens/auth/login_screen.dart';
import 'package:derm_ai_scan/screens/auth/signup_screen.dart';
import 'package:derm_ai_scan/screens/constants.dart';
import 'package:derm_ai_scan/widgets/dermai_button.dart';
import 'package:derm_ai_scan/widgets/dermold.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dermold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Image.asset(
                imagify("g-dermai"),
              ),
            ),
          ),
          DermaiButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            label: 'Login',
            height: 45,
            width: 180,
          ),
          const SizedBox(height: 15),
          DermaiButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            },
            label: 'Signup',
            height: 45,
            width: 180,
          ),
        ],
      ),
    );
  }
}
