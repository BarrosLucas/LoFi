import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer t;
  @override
  Widget build(BuildContext context) {
    t = Timer.periodic(Duration(seconds: 5), (timer) {
      timer.cancel();
      t.cancel();
      Navigator.of(context).pop();
      Modular.to.pushNamed("/home");

    });
    return Scaffold(
      backgroundColor: Color(0xFF94C7B6),
      body: _body(),
    );
  }

  _body(){
    return Container(
      alignment: Alignment.center,
      child: Image.asset("assets/images/splashscreen.png"),
    );
  }
}
