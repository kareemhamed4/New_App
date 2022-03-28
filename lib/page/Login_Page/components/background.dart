import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              width: size.width * 0.4,
              right: 0,
              bottom: 0,
              child: Image.asset('assets/images/login_bottom.png')),
          Positioned(
              width: size.width * 0.35,
              left: 0,
              top: 0,
              child: Image.asset('assets/images/main_top.png')),
          child,
        ],
      ),
    );
  }
}
