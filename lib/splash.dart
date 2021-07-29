import 'package:flutter/material.dart';
import 'package:talabat/const/colors.dart';
import 'package:talabat/const/strings.dart';
import 'dart:async';
import 'screens/home/view.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OrColor,
      body: SafeArea(
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.w900,
              color: WhColor
            ),
          ),
        ),
      ),
    );
  }
}
