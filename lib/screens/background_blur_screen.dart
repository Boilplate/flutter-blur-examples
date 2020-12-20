// backdrop filter blurs entire screen except child and widgets under it
// gives the frosted glass effect
import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/hendrix_background.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            // Everything above will get blurred
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                // This decoration is optional
                // it adds grey-ish color to the background
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
          ),
          const QuoteContainer(),
          const BackArrow()
        ],
      ),
    );
  }
}

class BackArrow extends StatelessWidget {
  const BackArrow();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 48.0,
      left: 8.0,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

class QuoteContainer extends StatelessWidget {
  const QuoteContainer();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.grey.withOpacity(0.4),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5.0,
              offset: Offset(5.0, 5.0),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const Text(
          "Music doesn’t lie. If there is something to be changed in this world, then it can only happen through music.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
