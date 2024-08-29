import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_test/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:hive_test/models/note_model.dart';
import 'package:hive_test/observer_bolc.dart';
import 'package:hive_test/views/home_view.dart';
import 'conestanse.dart';

void main() async{
  Bloc.observer  =  SimpleObserverBloc();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return  MultiBlocProvider(
       providers: [
      BlocProvider(create: (context) => AddNoteCubit()),
       ],
       child: MaterialApp(
       home: const HomeView() ,
       theme: ThemeData(
         brightness: Brightness.dark
       ),
     ),
   );
  }
}

