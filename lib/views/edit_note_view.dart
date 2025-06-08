import 'package:flutter/material.dart';
import 'package:google/widgets/custom_app_bar.dart';
import 'package:google/widgets/customtextfileds.dart';

class EditNoteView extends StatelessWidget {
  static String id = "EditNoteView";
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Notw', icon: Icon(Icons.check,size: 28,),),
                   CustomTextfileds(
                hintext: "Title",
                inputType: TextInputType.text,
                colorborder: Color(0xff8A8A8A),
                colorhint: Color.fromARGB(255, 30, 95, 85), maxline: 1,
              ),
              SizedBox(height: 8,),
              CustomTextfileds(
                hintext: "Content",
                inputType: TextInputType.multiline,
                colorborder: Color(0xff8A8A8A),
                colorhint: Color.fromARGB(255, 30, 95, 85), maxline: 6,
              ),
          ],
        ),
      ),
    );
  }
}