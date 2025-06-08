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
            hintext: "Write a tilte",
            inputType: TextInputType.text,
          ),
          CustomTextfileds(
            labetext: "Content",
            hintext: "Write a Content",
            inputType: TextInputType.multiline,
          ),
          SizedBox(height: 50,),
          Customebuttom(text: "text", color: Colors.green, onTap: () {}),
        ],
      ),
    );
  }
}
