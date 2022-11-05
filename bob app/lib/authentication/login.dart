import 'package:bob/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/divider.dart';
import 'components/logininputs.dart';
import 'dialogbox.dart';

class loginPage extends StatelessWidget {
  const loginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/logo.svg",
                width: size.width,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff162B75)),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              loginInputs(),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (() {}),
                    child: const Text("Forgot password?"),
                  ),
                  ElevatedButton(
                    onPressed: (() {}),
                    child: Text(
                      "Get inside",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff162B75),
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.1, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              divider(size: size),
              SizedBox(
                height: size.height * 0.08,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: ElevatedButton(
                  onPressed: (() {
                    showDialog(
                        context: context, builder: (context) => VoiceTaker());
                  }),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff162B75),
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/failed.svg",
                        width: 3,
                        height: 3,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Voice Signature")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  TextButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signupPage()),
                      );
                    }),
                    child: Text("Sign up"),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
