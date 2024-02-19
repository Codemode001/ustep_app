import 'package:flutter/material.dart';
import 'package:ustep_app/pages/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
    return Scaffold(
      backgroundColor: Color(0xFF201B51),
      body: Center(
        child: Image.asset('assets/ustp-logo.jpg'),
      ),
    );
  }
}
