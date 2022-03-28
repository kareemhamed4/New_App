import 'package:flutter/material.dart';
import 'package:kk/constants.dart';
import 'package:kk/page/Login_Page/login_page.dart';
import 'package:kk/page/Welcome_page/Welcome_Screen.dart';
import 'page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Gilroy',
      ),
      home: const SafeArea(
        child: WelcomeScreen(),
      ),
    );
  }
}