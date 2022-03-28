import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kk/components/alreadt_have_an_account.dart';
import 'package:kk/components/round_input_field.dart';
import 'package:kk/components/rounded_button.dart';
import 'package:kk/components/rounded_password_field.dart';
import 'package:kk/page/Login_Page/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text('LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            SizedBox(height: size.height *0.03,),
            SvgPicture.asset('assets/icons/login.svg',
            height: size.height * 0.35,),
            SizedBox(height: size.height *0.03,),
            RoundInputField(
              onChanged: (value){},
              icon: Icons.person,
              hintText: "Your Email",
            ),
            SizedBox(
              height: size.height * 0.0001,
            ),
            RoundPasswordField(
              onChanged: (value){},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(text: "LOGIN", press: (){}),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHaveAnAccount(
              press: (){},
            ),
          ],
    ),
        ),
      ),);
  }
}