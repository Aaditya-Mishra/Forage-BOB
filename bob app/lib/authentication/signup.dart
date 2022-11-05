import 'package:bob/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/divider.dart';
import 'components/logininputs.dart';
import 'components/signupinputs.dart';
import 'components/textfield.dart';

class signupPage extends StatelessWidget {
  const signupPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(24.0),
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
              Text(
                "Sign Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xff162B75)),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              signupInputs(),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (() {}),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mic,
                          color: Color(0xff6B6B6B),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Record voice",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff6B6B6B)),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xffeeeeee),
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.06, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (() {}),
                    child: Row(
                      children: [
                        Icon(
                          Icons.photo,
                          color: Color(0xff6B6B6B),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Click photo",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff6B6B6B)),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xffeeeeee),
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.06, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.08,
                child: ElevatedButton(
                    onPressed: (() {}),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff162B75),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: Text("Create account")),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginPage()),
                      );
                    }),
                    child: Text("Login"),
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
