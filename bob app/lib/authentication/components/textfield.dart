import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width,
        decoration: BoxDecoration(
            color: Color(0xffeeeeee), borderRadius: BorderRadius.circular(50)),
        child: child,
      ),
    );
  }
}