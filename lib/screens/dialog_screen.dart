import 'package:flutter/material.dart';

// blur behind dialog in Flutter is done using ModalBarrier class
// so a good way to get blur effect is change it's color property
// to BackdropFilter
// to do that type ModalBarrier as a widget inside build method and
// ctrl + click on it, that will open it's source file
// also dont forget to :
// import 'dart:ui' show ImageFilter;

class DialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => showDialog(
        context: context,
        builder: (_) => const UselessDialog(),
        barrierDismissible: true,
      ),
      child: Text("Press this"),
    );
  }
}

class UselessDialog extends StatelessWidget {
  const UselessDialog();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Do you understand everything?"),
      content: SizedBox(
        height: 50,
        width: 50,
        child: Image(
          image: AssetImage('assets/animated-hand-image.gif'),
        ),
      ),
      actions: [
        FlatButton(
          onPressed: null,
          child: Text("Hell yes"),
        ),
        FlatButton(onPressed: null, child: Text("Hell no"))
      ],
    );
  }
}
