
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText,super.key, this.maxLine = 1,});
    final int maxLine ;
    final String hintText ;
  OutlineInputBorder buildBorder( [Color? color]) {
    return OutlineInputBorder(
      borderSide:  BorderSide(
          color: color ?? Colors.white.withOpacity(.5)
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: Colors.cyan,
      decoration:InputDecoration(
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Colors.cyan) ,
        border: buildBorder(),

        hintText: hintText,
        hintStyle:TextStyle(
          color: Colors.white.withOpacity(.5),
        ) ,
      ),
    ) ;
  }

}