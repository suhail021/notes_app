import 'package:flutter/material.dart';
import 'package:google/widgets/customebuttom.dart';
import 'package:google/widgets/customformtextfileds.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          CustomTextfileds(
            labetext: "Title",
            hintext: "Write a title",
            inputType: TextInputType.text, color: Color.fromARGB(255, 30, 95, 85),
          ),
          CustomTextfileds(
            labetext: "Content",
            hintext: "Write a Content",
            inputType: TextInputType.multiline, color: Color.fromARGB(255, 30, 95, 85),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Customebuttom(text: "text", color: Color.fromARGB(255, 30, 95, 85), onTap: () {}),
          ),
        ],
      ),
    );
  }
}
