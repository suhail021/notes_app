import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
              color: Colors.white.withOpacity(.1/2),

      ),
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
      child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 27,)),
    );
  }
}