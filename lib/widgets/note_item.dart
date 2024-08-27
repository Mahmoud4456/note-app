import 'package:flutter/material.dart';


import '../views/note_edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
              color: Colors.orange,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: const Text(
                    "Flutter Tips",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(
                      "Build your App with mahmoud shamrok",
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
                    "oct 23 2024",
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


