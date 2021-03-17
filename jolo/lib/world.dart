import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'like.dart';

class Screensplash extends StatefulWidget {
  @override
  _ScreensplashState createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Image.network(
            "https://mpng.subpng.com/20180523/vg/kisspng-computer-icons-icon-design-life-affinity-counselling-5b05a6596ee0b7.9492984215270969214542.jpg",
            alignment: Alignment.center,
            width: 300,
            height: 600,
          ),
        ),
      ),
    );
  }
}
