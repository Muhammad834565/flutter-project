import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_foundations_01/view/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              //#dddcd7 24%, #e2c9cc 30%, #e7627d 46%, #b8235a 59%, #801357 71%,
              // #3d1635 84%, #3d1635 100%);
              Color(0xFFdbdcd7),
              Color(0xFFdddcd7),
              Color(0xFFe2c9cc),
              Color(0xFFe7627d ),
              Color(0xFF0b8235a),// Blue color using hex code #2196F3
              Color(0xFF801357),
              Color(0xFF3d1635),// Blue color using hex code #2196F3
              Color(0xFF3d1635),// Purple color using hex code #9C27B0
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            'Welcome',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
