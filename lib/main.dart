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
          Expanded(
            child: RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/background'),
              child: Text("Background blur"),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/dialog'),
              color: Colors.orange,
              child: Text("Efficient dialog with blurred background"),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/part'),
              color: Colors.greenAccent,
              child: Text("Part of screen blur"),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/single'),
              color: Colors.grey,
              child: Text("Single widget blur"),
            ),
          ),
        ],
      ),
    );
  }
}
