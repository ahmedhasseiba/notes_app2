import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[900],
      child: const Center(
        child: Text('Add a new note', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
