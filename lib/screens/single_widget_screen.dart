import 'dart:ui';

import 'package:flutter/material.dart';

class SingleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackArrow(),
            WhiteSpace(),
            Center(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Image(
                  image: AssetImage('assets/abstract_art.jpeg'),
                  height: 150,
                ),
              ),
            ),
            WhiteSpace(),
            TextWidget(),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No stack",
          style: TextStyle(
            fontSize: 19.0,
            fontStyle: FontStyle.italic,
          )),
    );
  }
}

class WhiteSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.1);
  }
}

class BackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
