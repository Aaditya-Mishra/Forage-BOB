import 'package:flutter/material.dart';

class faceVerificationCameraCard extends StatelessWidget {
  const faceVerificationCameraCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      content: Container(
        width: size.width * 0.7,
        height: size.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Take a photo",
            ),
          ],
        ),
      ),
    );
  }
}
