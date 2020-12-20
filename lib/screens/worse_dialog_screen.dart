import 'package:blur/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

import 'dialog_screen.dart';

class DialogScreen2 extends StatefulWidget {
  @override
  _DialogScreen2State createState() => _DialogScreen2State();
}

class _DialogScreen2State extends State<DialogScreen2> {
  bool isDialog = false;

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
            builder: (_) => const UselessDialog(),
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
