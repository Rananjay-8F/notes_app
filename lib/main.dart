import 'package:flutter/material.dart';
import 'auth.dart';
import 'addnote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes app',
      routes: {
        Auth.id: (context) => Auth()
        ADDNOTE.id: (context) => ADDNOTE()

      },
      initialRoute: Auth.id,
    );
  }
}
