import 'package:flutter/material.dart';
import 'package:google/widgets/customebuttom.dart';
import 'package:google/widgets/customtextfileds.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
      child: Column(
        children: [
          CustomTextfileds(
            hintext: "Title",
            inputType: TextInputType.text,
            colorborder: Color(0xff8A8A8A),
            colorhint: Color.fromARGB(255, 30, 95, 85), maxline: 1,
          ),
          CustomTextfileds(
            hintext: "Content",
            inputType: TextInputType.multiline,
            colorborder: Color(0xff8A8A8A),
            colorhint: Color.fromARGB(255, 30, 95, 85), maxline: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Customebuttom(
              text: "text",
              color: Color.fromARGB(255, 30, 95, 85),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
