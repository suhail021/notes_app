import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final Icon icon;
  const CustomSearchIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
              color: Colors.white.withOpacity(.1/2),

      ),
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
      child: IconButton(onPressed: (){}, icon: icon),
    );
  }
}