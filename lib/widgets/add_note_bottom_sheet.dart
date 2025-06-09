import 'package:flutter/material.dart';
import 'package:google/widgets/customebuttom.dart';
import 'package:google/widgets/customtextfileds.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextfileds(
              hintext: "Title",
              inputType: TextInputType.text,
              colorborder: Color(0xff8A8A8A),
              colorhint: Color.fromARGB(255, 30, 95, 85), maxline: 1,
            ),
            SizedBox(height: 10,),
            CustomTextfileds(
              hintext: "Content",
              inputType: TextInputType.multiline,
              colorborder: Color(0xff8A8A8A),
              colorhint: Color.fromARGB(255, 30, 95, 85), maxline: 6,
            ),
            SizedBox(
              height: 60,
            ),
            Customebuttom(text: "Add", color: Color.fromARGB(255, 30, 95, 85), onTap: (){}),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}
