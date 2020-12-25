import 'dart:ui';

import 'package:blur/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

class SingleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Image(
                image: AssetImage('assets/abstract_art.jpeg'),
                height: 150,
              ),
            ),
          ),
          BackArrow(),
        ],
      ),
    );
  }
}
