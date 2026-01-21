import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app2/constants.dart';
import 'package:notes_app2/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app2/models/note_model.dart';
import 'package:notes_app2/simple_bloc_observer.dart';
import 'package:notes_app2/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp2());
}

class NotesApp2 extends StatelessWidget {
  const NotesApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      home: const NotesView(),
    );
  }
}
