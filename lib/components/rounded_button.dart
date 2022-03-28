import 'package:flutter/material.dart';
import 'package:kk/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color buttonColor,textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.buttonColor = kPrimaryColor,
    this.textColor =Colors.white,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: Container(
        color: buttonColor,
        width: size.width * 0.8,
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
          color: buttonColor,
          onPressed: press(),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),),),
      ),
    );
  }
}