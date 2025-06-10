import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/custom_app_bar.dart';
import 'package:google/widgets/customtextfileds.dart';

class EditNoteView extends StatefulWidget {
  static String id = "EditNoteView";

  EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  void initState() {
    print(widget.note.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Notw',
              icon: Icon(Icons.check, size: 28),
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubitCubit>(context).fechAllNote();

                Navigator.pop(context);
              },
            ),
            CustomTextfileds(
              onChanged: (value) {
                title = value;
              },
              hintext: "Title",
              inputType: TextInputType.text,
              colorborder: Color(0xff8A8A8A),
              colorhint: Color.fromARGB(255, 30, 95, 85),
              maxline: 1,
            ),
            SizedBox(height: 8),
            CustomTextfileds(
              onChanged: (value) {
                content = value;
              },
              hintext: "Content",
              inputType: TextInputType.multiline,
              colorborder: Color(0xff8A8A8A),
              colorhint: Color.fromARGB(255, 30, 95, 85),
              maxline: 6,
            ),
          ],
        ),
      ),
    );
  }
}
