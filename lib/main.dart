import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp2());
}

class NotesApp2 extends StatelessWidget {
  const NotesApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}
