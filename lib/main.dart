import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_test/views/home_view.dart';

import 'conestanse.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     home: const HomeView() ,
     theme: ThemeData(
       brightness: Brightness.dark
     ),
   );
  }
}

