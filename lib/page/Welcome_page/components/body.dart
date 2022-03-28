import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kk/components/rounded_button.dart';
import 'package:kk/constants.dart';
import 'package:kk/page/Login_Page/login_page.dart';
import 'package:kk/page/Welcome_page/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Welcome To TAZKARA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.4,
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                ),
                SizedBox(height: size.height * .02,),
                RoundedButton(
                  text: 'SIGNUP',
                  press: (){
                  },
                  buttonColor: kPrimaryLightColor,
                  textColor: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}