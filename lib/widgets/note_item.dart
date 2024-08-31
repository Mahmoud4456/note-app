import 'package:flutter/material.dart';
import 'package:hive_test/models/note_model.dart';


import '../views/note_edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({required this.notes , super.key});
  final NoteModel notes ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NoteEditView();
            } ),);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 24 , top: 24 , left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(notes.color),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title:  Text(
                    notes.title,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(
                      notes.subTitle,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.4),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16,top: 16),
                  child: Text(
                    notes.date,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


