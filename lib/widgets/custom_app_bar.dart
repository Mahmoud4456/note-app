import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final IconData icon ;
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: const TextStyle(fontSize: 26, color: Colors.white,),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white.withOpacity(.17),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon),
          ),
        ),
      ],
    );
  }
}
