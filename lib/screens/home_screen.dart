import 'dart:io';

import 'package:derm_ai_scan/controllers/image_controller.dart';
import 'package:derm_ai_scan/screens/constants.dart';
import 'package:derm_ai_scan/widgets/dermai_button.dart';
import 'package:derm_ai_scan/widgets/dermold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ImageController>(
      builder: (context, imageController, child) {
        return Dermold(
          body: imageController.image != null
              ? Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(padding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(radius),
                        child: Image.file(
                          File(imageController.image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DermaiButton(
                            onPressed: () {
                              imageController.pickImage();
                            },
                            icon: iconify('upload'),
                            label: 'Upload Photo',
                            height: 50,
                            width: 180,
                          ),
                          const SizedBox(height: 20),
                          DermaiButton(
                            onPressed: () {
                              imageController.pickImage();
                            },
                            icon: iconify('upload'),
                            label: ' Scan Photo ',
                            height: 50,
                            width: 180,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(40),
                          child: Text(
                            "Unveiling the truth beneath your skin",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19,
                              color: mainClr,
                            ),
                          ),
                        ),
                      ),
                      DermaiButton(
                        onPressed: () {
                          imageController.pickImage();
                        },
                        icon: iconify('upload'),
                        label: 'Upload Photo',
                        height: 50,
                        width: 180,
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
