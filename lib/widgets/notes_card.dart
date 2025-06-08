import 'package:flutter/material.dart';
import 'package:google/views/edit_note_view.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8, right: 15, left: 15),
        padding: EdgeInsets.only(bottom: 20, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff393939),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 15, top: 20),
                child: Text(
                  "Flutter tips",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(right: 1, bottom: 8),
                child: Text(
                  "build youer Career with tharwat Samy",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 33),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text("May 21.2025", style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
