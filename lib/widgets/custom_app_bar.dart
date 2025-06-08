
import 'package:flutter/material.dart';
import 'package:google/widgets/custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Icon icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return 
     Container(
      padding: EdgeInsets.only(top: 35,right: 4,left: 4,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontSize: 25),),
CustomSearchIcon(icon: icon,)
        ],
      ),
     );
  }
}