import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final Icon icon;
  final void Function()? onPressed;
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
              color: Colors.white.withOpacity(.1/2),

      ),
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}