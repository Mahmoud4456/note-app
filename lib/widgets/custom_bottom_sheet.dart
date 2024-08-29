import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_test/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:hive_test/cubit/add_note_cubit/add_note_state.dart';
import 'package:hive_test/widgets/note_form_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer < AddNoteCubit , AddNoteState >(
        listener: (BuildContext context, state) {
          if(state is AddNoteFailure){
            print("Error ${state.errMessage}");
          }
          if (state is AddNoteSuccess){
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddForm ()
          );
        },
        );
  }
}





