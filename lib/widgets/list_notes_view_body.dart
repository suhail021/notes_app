import 'package:flutter/material.dart';
import 'package:google/widgets/notes_card.dart';

class ListNotesViewBody extends StatelessWidget {
  const ListNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 2),
        itemCount: 10,
        itemBuilder: (context, index) {
        return  NotesCard();
        },
      ),
    );
  }
}