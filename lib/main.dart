import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:talabat/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
