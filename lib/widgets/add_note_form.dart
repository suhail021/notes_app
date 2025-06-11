import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/colors_list_item.dart';
import 'package:google/widgets/customebuttom.dart';
import 'package:google/widgets/customtextfileds.dart';
import 'package:intl/intl.dart';

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
          SizedBox(height: 10,),
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
          const SizedBox(height: 20),

          ColorsListView(),
          const SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Customebuttom(
                isLoading: state is AddNoteLoading ? true : false,
                text: "Add",
                color: Color.fromARGB(255, 30, 95, 85),
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: suptitle!,
                      date: DateFormat('yMd').format(DateTime.now()),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}


