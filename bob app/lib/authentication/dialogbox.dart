import 'dart:async';
import 'dart:io';

import 'package:bob/authentication/camera/cameracontroller.dart';
import 'package:bob/authentication/camera/takepicture.dart';
import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bob/main.dart';
import 'package:image_picker/image_picker.dart';

File? imageFile;
void getFromCamera(BuildContext context) async {
  XFile? pickedFile = await ImagePicker()
      .pickImage(source: ImageSource.camera, maxHeight: 1080, maxWidth: 1080);
  var isVoiceCorrect = FirebaseFirestore.instance
      .collection('faceControl')
      .doc('kS1bf3qdZoh4cD238mhO');
  isVoiceCorrect.get().then((data) => {
        if (data['isFaceCorrect'] == 1)
          {showDialog(context: context, builder: (context) => faceSuccess())}
        else
          {
            showDialog(
                context: context, builder: (context) => const faceFailed())
          }
      });
}

class voiceSuccess extends StatelessWidget {
  voiceSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      content: SizedBox(
        width: size.width * 0.7,
        height: size.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/success.svg"),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Voice authentication\nsuccessful",
              style: TextStyle(color: Color(0xff2AC87F)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              width: size.width * 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff162B75),
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CameraPage(camera: camera)));
                  getFromCamera(context);
                },
                child: Text("Authenticate Face"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class voiceFailed extends StatelessWidget {
  const voiceFailed({super.key});

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
            SvgPicture.asset("assets/failed.svg"),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Voice authentication\nFailed",
              style: TextStyle(color: Color(0xffDC3545)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              width: size.width * 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffDC3545),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Retry"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class faceFailed extends StatelessWidget {
  const faceFailed({super.key});

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
            SvgPicture.asset("assets/failed.svg"),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Face verification\nFailed",
              style: TextStyle(color: Color(0xffDC3545)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              width: size.width * 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffDC3545),
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                onPressed: () {
                  getFromCamera(context);
                },
                child: Text("Retry"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class faceSuccess extends StatelessWidget {
  const faceSuccess({super.key});

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
            SvgPicture.asset("assets/success.svg"),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Face authentication\nsuccessful",
              style: TextStyle(color: Color(0xff2AC87F)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class VoiceTaker extends StatefulWidget {
  const VoiceTaker({super.key});

  @override
  State<VoiceTaker> createState() => _VoiceTakerState();
}

class _VoiceTakerState extends State<VoiceTaker> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      content: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.35,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Read out the sentence',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
            SizedBox(height: size.height / 30),
            Container(
              width: size.width * 0.6,
              height: size.height / 18,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Hi, I'm using zero knowledge authentication.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height / 30),

            SvgPicture.asset(
              'assets/icons/mic.svg',
              color: Colors.blue,
              height: size.height / 15,
            ),

            SizedBox(height: size.height / 30),

            // Color(0xff162B75)

            InkWell(
              onTap: () async {
                var isVoiceCorrect = FirebaseFirestore.instance
                    .collection('voiceControl')
                    .doc('2VGy0S0eXJECOC3JXr64');
                isVoiceCorrect.get().then((data) => {
                      if (data['isVoiceCorrect'] == 1)
                        {
                          showDialog(
                              context: context,
                              builder: (context) => voiceSuccess())
                        }
                      else
                        {
                          showDialog(
                              context: context,
                              builder: (context) => const voiceFailed())
                        }
                    });
              },
              child: Container(
                height: size.height / 15,
                width: size.width / 2.2,
                decoration: BoxDecoration(
                    color: const Color(0xff162B75),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.grey.shade300),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
