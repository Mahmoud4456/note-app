import 'package:flutter/material.dart';

import 'note_item.dart';

class CustomNoteListView extends StatelessWidget {
  const CustomNoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder:(context , index ) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16 ,vertical: 5),
          child: NoteItem(),
        ) ;
      },
    );
  }
}