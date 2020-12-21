import 'package:blur/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

// This is the efficient way of blurring behind dialog

// Blur behind dialog in Flutter is done using ModalBarrier class
// so a good way to get blur effect is change it's color property
// inside the build method to BackdropFilter
// to do that type ModalBarrier as a widget inside build method and
// ctrl + click on it, that will open it's source file
// also dont forget to :
// import 'dart:ui' show ImageFilter;

class DialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/puppy.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const DialogButton(),
          const BackArrow(),
        ],
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  const DialogButton();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 200,
        child: RaisedButton(
          color: Colors.black.withOpacity(0.65),
          elevation: 5.0,
          onPressed: () => showDialog(
            context: context,
            builder: (_) => YourDialog(),
            barrierDismissible: true,
          ),
          child: Text(
            "Press to pop dialog",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}

class YourDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Good job!"),
      content: SizedBox(
        height: 80,
        width: 120,
        child: Column(
          children: [
            Text("You clicked the button!"),
            SizedBox(
              height: 50,
              width: 50,
              child: Image(
                image: AssetImage('assets/animated-hand-image.gif'),
              ),
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text("OK"),
        ),
      ],
    );
  }
}
