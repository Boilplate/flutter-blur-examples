import 'dart:ui';

import 'package:blur/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

class PartialScreen extends StatefulWidget {
  @override
  _PartialScreenState createState() => _PartialScreenState();
}

class _PartialScreenState extends State<PartialScreen> {
  bool isBlurred = true;

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
            child: isBlurred
                ? ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                  )
                : Container(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            child: RaisedButton(
              onPressed: () => setState(() => isBlurred = !isBlurred),
              child: Text("Show answer"),
            ),
          )
        ],
      ),
    );
  }
}
