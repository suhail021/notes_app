import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/notes_card.dart';

class ListNotesViewBody extends StatefulWidget {
  const ListNotesViewBody({super.key});

  @override
  State<ListNotesViewBody> createState() => _ListNotesViewBodyState();
}

class _ListNotesViewBodyState extends State<ListNotesViewBody> {
  void initState() {
    BlocProvider.of<NotesCubitCubit>(context).fechAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 2),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NotesCard();
            },
          ),
        );
      },
    );
  }
}
