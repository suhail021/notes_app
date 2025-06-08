import 'package:flutter/material.dart';

class CustomTextfileds extends StatelessWidget {
  final String hintext;
  final int maxline;
  final TextInputType inputType;
  final Color colorhint;
  final Color colorborder;
  Function(String)? onchange;
  CustomTextfileds({
    super.key,
    this.onchange,
    required this.hintext,
    required this.inputType,
 required this.colorborder, required this.colorhint, required this.maxline,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        keyboardType: inputType,
        onChanged: onchange,

        cursorColor: colorhint,
        style: TextStyle(color: colorhint),
        maxLines: maxline,

        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: colorhint),
          focusColor: colorborder,
          contentPadding: EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: colorborder,
              style: BorderStyle.solid,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.5,
              color: Color(0xffC0331C),
              style: BorderStyle.solid,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.5,
              color: Color(0xffC0331C),
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.5,
              color: colorborder,
              style: BorderStyle.solid,
            ),
          ),
          hoverColor: colorborder,
        ),
      ),
    );
  }
}
