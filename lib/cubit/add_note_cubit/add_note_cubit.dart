import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_test/conestanse.dart';

import '../../models/note_model.dart';
import 'add_note_state.dart';


class AddNoteCubit extends Cubit <AddNoteState>{
  AddNoteCubit() : super (AddNoteInitial());

  void AddNote(NoteModel note ) async{
    emit(AddNoteLoading());
    try {
      emit(AddNoteSuccess());
      var box = Hive.box<NoteModel>(kNoteBox);
      // var boxOpen = Hive.openBox(kNoteBox);
      await box.add(note);
    }catch(error){
      emit(AddNoteFailure(error.toString()));
    }
  }
}