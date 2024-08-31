import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_test/cubit/note_cubit/note_cubit.dart';

import '../widgets/custom_bottom_sheet.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => NoteCubit() ,
      child: Scaffold(
        floatingActionButton:  FloatingActionButton(onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
              builder: (context) => const CustomBottomSheet(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )
          );
        } ,
          backgroundColor: Colors.cyan ,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.black,),
        ),
        body: const HomeViewBody(),

      ),
    );
  }
}
