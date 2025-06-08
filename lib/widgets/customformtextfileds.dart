import 'package:flutter/material.dart';

class CustomTextfileds extends StatelessWidget {
  final String labetext;
  final String hintext;
  final TextInputType inputType;
  Function(String)? onchange;
  CustomTextfileds({
    super.key,
    required this.labetext,
    this.onchange,
    required this.hintext,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: TextField(
        keyboardType: inputType,
        onChanged: onchange,

        cursorColor: Colors.green,
        style: TextStyle(color: Colors.green),
        maxLines: null,

        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: Colors.green),
          labelText: labetext,
          labelStyle: TextStyle(color: Colors.green),
          focusColor: Colors.green,
          contentPadding: EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Color(0xffC0331C),
              style: BorderStyle.solid,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Color(0xffC0331C),
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.8,
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
          hoverColor: Colors.white,
        ),
      ),
    );
  }
}
