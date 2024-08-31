import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_test/conestanse.dart';
import 'package:hive_test/cubit/note_cubit/note_state.dart';

import '../../models/note_model.dart';

class NoteCubit extends Cubit <NoteState> {
  NoteCubit() : super (NoteInitialState());
  List<NoteModel>? notes ;

  void note() {
    var box = Hive.box<NoteModel>(kNoteBox);
    notes = box.values.cast<NoteModel>().toList();
    // notes = box.values.toList().cast()<NoteModel>;

  }
}
