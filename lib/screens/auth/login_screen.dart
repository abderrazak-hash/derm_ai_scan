import 'package:derm_ai_scan/controllers/login_controller.dart';
import 'package:derm_ai_scan/screens/constants.dart';
import 'package:derm_ai_scan/screens/home_screen.dart';
import 'package:derm_ai_scan/widgets/dermai_button.dart';
import 'package:derm_ai_scan/widgets/dermai_input.dart';
import 'package:derm_ai_scan/widgets/dermold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dermold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Consumer<LoginController>(
            builder: (context, loginController, child) {
          return Column(
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
              DermaiInput(
                controller: loginController.emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              DermaiInput(
                controller: loginController.passwordController,
                hintText: 'Password',
                obscureText: true,
                decorations: InputDecoration(
                  suffix: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      iconify('eye'),
                      height: 18,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 15),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: mainClr,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              DermaiButton(
                onPressed: () async {
                  if (await loginController.login()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                label: 'Login',
                height: 45,
                width: 180,
              ),
              const SizedBox(
                height: 120,
              ),
            ],
          );
        }),
      ),
    );
  }
}
