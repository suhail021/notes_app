import 'package:flutter/material.dart';
import 'package:google/views/edit_note_view.dart';
import 'package:google/views/notes_view.dart';

void main() async {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    routes: {
     NotesView.id :  (context) => NotesView(),
     EditNoteView.id :  (context) => EditNoteView(),
      
    },
    theme: ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff2F2F2F)
    ),
    initialRoute: NotesView.id,);
  }
}
