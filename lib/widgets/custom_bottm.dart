import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key, this.onTap,
    this.isLoading = false,
  });
  final bool isLoading ;

  final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration:  BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Center(
          child: isLoading ? const SizedBox(
            height:24 ,
            width: 24,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          )  : const Text("Add" ,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20 ,
            ),
          ),
        ),
      ),
    );
  }
}