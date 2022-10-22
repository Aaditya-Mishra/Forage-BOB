import 'package:bob/authentication/components/textfield.dart';
import 'package:flutter/material.dart';

class signupInputs extends StatefulWidget {
  const signupInputs ({
    Key? key,
  }) : super(key: key);

  @override
  State<signupInputs> createState() => _signupInputsState();
}

class _signupInputsState extends State<signupInputs> {
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.person),
              hintText: "Enter your name",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.email),
              hintText: "Enter your email",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
            suffixIcon: GestureDetector(
                onTap: () {
                  setState((){
                    _obscureText=!_obscureText;
                  });
                },
                child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              ),
              hintText: "Password here",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.lock),
              hintText: "Confirm Password",
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
