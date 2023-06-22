import 'package:derm_ai_scan/screens/constants.dart';
import 'package:derm_ai_scan/widgets/dermai_button.dart';
import 'package:derm_ai_scan/widgets/dermai_input.dart';
import 'package:derm_ai_scan/widgets/dermold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dermold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
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
              hintText: 'Full name',
            ),
            const SizedBox(height: 15),
            DermaiInput(
              hintText: 'Email',
            ),
            const SizedBox(height: 15),
            DermaiInput(
              hintText: 'Phone',
            ),
            const SizedBox(height: 15),
            DermaiInput(
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
            const SizedBox(height: 30),
            DermaiButton(
              onPressed: () {},
              label: 'Signup',
              height: 45,
              width: 180,
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
