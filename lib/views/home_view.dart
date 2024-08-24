import 'package:flutter/material.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const HomeViewBody(),
      floatingActionButton:  FloatingActionButton(onPressed: (){} ,
        backgroundColor: Colors.cyan ,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
