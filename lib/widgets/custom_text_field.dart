
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText,super.key, this.maxLine = 1, this.onSaved, });
    final int maxLine ;
    final String hintText ;

    final void Function(String?)? onSaved ;
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
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true ){
          return "invalid value";
        }else{
          return null ;
        }
      },
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