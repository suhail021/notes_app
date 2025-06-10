import 'package:bloc/bloc.dart';
import 'package:google/constants.dart';
import 'package:google/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fechAllNote() {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(NotesSuccess(noteBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
