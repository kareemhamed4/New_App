import 'package:flutter/material.dart';
import 'package:kk/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccount({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text(
          login ? "Don't have an account ?" : "Already have an account",
          style: TextStyle(
            color: kPrimaryColor,
          ),),
        SizedBox(width: size.width * 0.02,),
        GestureDetector(
          onTap: press(),
          child: Text(
            login ? "SIGN UP" : "SIGN IN",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ],
    );
  }
}