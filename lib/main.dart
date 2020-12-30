import 'package:blur/screens/background_screen.dart';
import 'package:blur/screens/dialog_screen.dart';
import 'package:blur/screens/partial_screen.dart';
import 'package:blur/screens/single_widget_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blur examples',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (_) => MyHomeScreen(),
        '/background': (_) => BackgroundScreen(),
        '/dialog': (_) => DialogScreen(),
        '/part': (_) => PartialScreen(),
        '/single': (_) => SingleScreen(),
      },
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blur examples"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NavigatorButton(text: 'Background blur', screen: '/background'),
          NavigatorButton(text: 'Single widget blur', screen: '/single'),
          NavigatorButton(
              text: 'Dialog with blurred background', screen: '/dialog'),
          NavigatorButton(text: 'Partial blur', screen: '/part'),
        ],
      ),
    );
  }
}

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    this.text,
    this.screen,
  });

  final String text;
  final String screen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        onPressed: () => Navigator.pushNamed(context, screen),
        color: Colors.greenAccent,
        child: Text(text),
      ),
    );
  }
}
