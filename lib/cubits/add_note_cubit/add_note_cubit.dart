import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google/constants.dart';
import 'package:google/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = Color.fromARGB(255, 30, 95, 85);
  addNote(NoteModel note) async {
    note.color =color!.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
     await noteBox.add(note);
      emit(AddNoteSuccess());
    }  catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
