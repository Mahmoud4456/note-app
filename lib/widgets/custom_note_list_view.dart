import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_test/cubit/note_cubit/note_cubit.dart';
import 'package:hive_test/cubit/note_cubit/note_state.dart';
import 'package:hive_test/models/note_model.dart';

import 'note_item.dart';

class CustomNoteListView extends StatelessWidget {
  const CustomNoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit , NoteState>(
      builder: (context , state){
      List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];
       BlocProvider.of<NoteCubit>(context).note();
      return ListView.builder(
          itemCount:notes.length,
          itemBuilder:(context , index ) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 5),
              child: NoteItem(notes: notes[index],),
            ) ;
          },
        );
      } ,

    );
  }
}