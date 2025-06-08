
import 'package:flutter/material.dart';
import 'package:google/widgets/custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Container(
      padding: EdgeInsets.only(top: 35,right: 20,left: 20,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notes",style: TextStyle(fontSize: 25),),
CustomSearchIcon()
        ],
      ),
     );
  }
}