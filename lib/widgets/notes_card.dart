import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/views/edit_note_view.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key, required this.note});
 final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  EditNoteView(note: note,);
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8, ),
        padding: EdgeInsets.only(bottom: 20, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 15, top: 20),
                child: Text(
                note.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(right: 1, bottom: 8),
                child: Text(
                 note.subtitle,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();

                  BlocProvider.of<NotesCubitCubit>(context).fechAllNote();
                },
                icon: Icon(Icons.delete, color: Colors.black, size: 33),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(note.date, style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
