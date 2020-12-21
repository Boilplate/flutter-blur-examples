import 'dart:ui';

import 'package:blur/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

// If you want to blur 2 or more widgets for which you know the exact location
// use Positioned around BackdropFilter

class PartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/lakers.jpeg'),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            child: Text(
              "Lakers",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            child: Text(
              "Which NBA team has this logo?",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          BackArrow(),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            bottom: MediaQuery.of(context).size.height * 0.5,
            left: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.height * 0.05,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x00000000),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
