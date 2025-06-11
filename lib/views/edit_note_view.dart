import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/constants.dart';
import 'package:google/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/color_item.dart';
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
              hintext: widget.note.title,
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
              hintext: widget.note.subtitle,
              inputType: TextInputType.multiline,
              colorborder: Color(0xff8A8A8A),
              colorhint: Color.fromARGB(255, 30, 95, 85),
              maxline: 6,
            ),
            SizedBox(height: 20),
            EditeNoteColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}

class EditeNoteColorsList extends StatefulWidget {
  const EditeNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditeNoteColorsList> createState() => _EditeNoteColorsListState();
}

class _EditeNoteColorsListState extends State<EditeNoteColorsList> {
 late int currentIndex;
  @override
  void initState() {
currentIndex =kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
        itemCount: kcolors.length,

        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kcolors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
