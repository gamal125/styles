import 'package:flutter/material.dart';
 import 'package:styley/Screens/SignUpScreen.dart';
import 'package:styley/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      navigateAndFinish(context, SignUpScreen());
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/splash.JPG'),fit: BoxFit.cover)),
      ),
    );
  }
}
