import 'package:bloc/bloc.dart';
import 'package:google/constants.dart';
import 'package:google/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
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
