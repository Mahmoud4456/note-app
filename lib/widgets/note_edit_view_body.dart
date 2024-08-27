import 'package:flutter/material.dart';
import 'package:hive_test/widgets/custom_app_bar.dart';
import 'package:hive_test/widgets/custom_text_field.dart';

class NoteEditViewBody extends StatelessWidget {
  const NoteEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24 , vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15 ),
            child: CustomAppBar(title: "Edit Note", icon: Icons.check,),
          ),
          SizedBox(height: 50,),
          CustomTextField(hintText: "title"),
          SizedBox(height: 15,),
          CustomTextField(hintText: "contain" , maxLine: 5,),
        ],
      ),
    );
  }
}
