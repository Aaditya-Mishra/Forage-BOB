import 'package:bob/authentication/camera/takepicture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bob/main.dart';

class voiceSuccess extends StatelessWidget {
   voiceSuccess({super.key});
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      content: Container(
        width: size.width * 0.7,
        height: size.height*0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/success.svg"),
            SizedBox(height: size.height*0.02,),
            Text(
              "Voice authentication\nsuccessful",
              style: TextStyle(color: Color(0xff2AC87F)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height*0.05,),
            Container(
              width: size.width*0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff162B75),
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                onPressed: (() {
                }),
                child: Text("Authenticate face"),
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
        height: size.height*0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/failed.svg"),
            SizedBox(height: size.height*0.02,),
            Text(
              "Voice authentication\nFailed",
              style: TextStyle(color: Color(0xffDC3545)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height*0.05,),
            Container(
              width: size.width*0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDC3545),
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                onPressed: (() {}),
                child: Text("Retry"),
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
        height: size.height*0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/failed.svg"),
            SizedBox(height: size.height*0.02,),
            Text(
              "Face verification\nFailed",
              style: TextStyle(color: Color(0xffDC3545)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height*0.05,),
            Container(
              width: size.width*0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDC3545),
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                onPressed: (() {}),
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
        height: size.height*0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/success.svg"),
            SizedBox(height: size.height*0.02,),
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