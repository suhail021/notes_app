import 'package:flutter/material.dart';
import 'package:google/widgets/add_note_bottom_sheet.dart';
import 'package:google/widgets/custom_app_bar.dart';
import 'package:google/widgets/list_notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: Column(children: [CustomAppBar(),
       ListNotesViewBody()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
