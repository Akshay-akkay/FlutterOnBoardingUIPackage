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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffFCC5AE),
              Color(0xffFEEBD0),
              Color(0xffFEEBD0),
            ],
          ),
        ),
        child: onBordingBody(),
      ),
    );
  }

  Widget onBordingBody() => Container(
        child: SliderLayoutView(),
      );
}
