import 'package:bob/authentication/components/textfield.dart';
import 'package:flutter/material.dart';

class loginInputs extends StatefulWidget {
  const loginInputs({
    Key? key,
  }) : super(key: key);

  @override
  State<loginInputs> createState() => _loginInputsState();
 
}

class _loginInputsState extends State<loginInputs> {
   bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              hintText: "Enter password",
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
