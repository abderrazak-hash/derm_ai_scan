import 'package:derm_ai_scan/controllers/login_controller.dart';
import 'package:derm_ai_scan/providers.dart';
import 'package:derm_ai_scan/screens/auth/auth_screen.dart';
import 'package:derm_ai_scan/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/auth/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const DermAiApp());
}

class DermAiApp extends StatelessWidget {
  const DermAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthScreen(),
      ),
    );
  }
}
