import 'dart:ui';

import 'package:flutter/material.dart';

class SingleScreen extends StatefulWidget {
  @override
  _SingleScreenState createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1500))
          ..forward()
          ..repeat(reverse: true);
    animation = Tween<double>(begin: 50, end: 400).animate(
      CurvedAnimation(
        curve: Curves.easeIn,
        parent: animationController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 50 + animation.value,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Image(
                image: AssetImage('assets/abstract_art.jpeg'),
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
