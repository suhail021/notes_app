import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/customebuttom.dart';
import 'package:google/widgets/customtextfileds.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, suptitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextfileds(
            hintext: "Title",
            inputType: TextInputType.text,
            colorborder: Color(0xff8A8A8A),
            colorhint: Color.fromARGB(255, 30, 95, 85),
            maxline: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 10),
          CustomTextfileds(
            hintext: "Content",
            inputType: TextInputType.multiline,
            colorborder: Color(0xff8A8A8A),
            colorhint: Color.fromARGB(255, 30, 95, 85),
            maxline: 6,
            onSaved: (value) {
              suptitle = value;
            },
          ),
          const SizedBox(height: 60),
          Customebuttom(
            text: "Add",
            color: Color.fromARGB(255, 30, 95, 85),
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteModel(
                  title: title!,
                  subtitle: suptitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
