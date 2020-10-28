import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui_view/slider_layout_view.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffD2EEEF), Colors.white, Colors.white])),
        child: onBordingBody(),
      ),
    );
  }

  Widget onBordingBody() => Container(
        child: SliderLayoutView(),
      );
}
