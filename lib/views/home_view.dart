import 'package:flutter/material.dart';

import '../widgets/custom_bottom_sheet.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:  FloatingActionButton(onPressed: (){
        showModalBottomSheet(
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

    );
  }
}
