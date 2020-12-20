import 'package:flutter/material.dart';

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
