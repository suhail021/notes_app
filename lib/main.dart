import 'package:flutter/material.dart';
import 'package:google/constants.dart';
import 'package:google/models/note_model.dart';
import 'package:google/views/edit_note_view.dart';
import 'package:google/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NotesView.id: (context) => NotesView(),
        EditNoteView.id: (context) => EditNoteView(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff2F2F2F),
      ),
      initialRoute: NotesView.id,
    );
  }
}
