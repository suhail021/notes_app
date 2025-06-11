import 'package:flutter/material.dart';
import 'package:google/constants.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/color_item.dart';


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
