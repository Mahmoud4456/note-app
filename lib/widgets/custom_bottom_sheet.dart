import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_test/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:hive_test/cubit/add_note_cubit/add_note_state.dart';
import 'package:hive_test/widgets/note_form_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNoteCubit (),
      child: BlocConsumer < AddNoteCubit , AddNoteState >(
          listener: (BuildContext context, state) {
            if(state is AddNoteFailure){
              print("Error ${state.errMessage}");
            }
            if (state is AddNoteSuccess){
              Navigator.pop(context);
            }
          },
          builder: (BuildContext context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child:  Padding(
                padding: EdgeInsets.only( top: 25, left:  20, right: 20 , bottom: MediaQuery.of(context).viewInsets.bottom ),
                child: const AddForm (),
              ),
            );
          },
          ),
    );
  }
}





