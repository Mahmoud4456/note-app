
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_test/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:hive_test/models/note_model.dart';

import 'custom_bottm.dart';

import 'custom_text_field.dart';

class AddForm extends StatefulWidget {
  const AddForm({
    super.key,
  });

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {

  String? title ,subTitle ;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: "Title", onSaved: (value){
              title = value ;
            },
            ),
            const SizedBox(height: 15,),
            CustomTextField(hintText: "Content", maxLine: 5,
              onSaved: (value){
                subTitle = value ;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomBottom(onTap: (){
              if(formKey.currentState!.validate()) {
                formKey.currentState!.save();
               var noteModel = NoteModel(title!, subTitle!, DateTime.now().toString(), Colors.grey.value);
                BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel);
              }else{
                autovalidateMode= AutovalidateMode.always;
              }
              setState(() {});
            },),
          ],
        ),
      ),
    );
  }
}