import 'package:flutter/material.dart';

import '../views/note_item.dart';
import 'custom_app_bar.dart';
import 'custom_note_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15 ),
            child: CustomAppBar(),
          ),
          SizedBox(height: 15,),
          Expanded(child: CustomNoteListView()),
        ],
      ),
    );
  }
}





