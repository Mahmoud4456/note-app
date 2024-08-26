import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
          const CustomTextField(hintText: "Title",),
            const SizedBox(height: 15,),
            const CustomTextField(hintText: "Content", maxLine: 5,),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration:  BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Text("Add" ,
                  style: TextStyle(
                    color: Colors.black,
                 fontSize: 20 ,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


