import 'package:flutter/material.dart';

class CustomTextfileds extends StatelessWidget {
  final String hintext;
  final int maxline;
  final TextInputType inputType;
  final Color colorhint;
  final Color colorborder;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;
  CustomTextfileds({
    super.key,
    this.onSaved,
    this.onChanged,
    required this.hintext,
    required this.inputType,
    required this.colorborder,
    required this.colorhint,
    required this.maxline,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onSaved: onSaved,
  validator: (value) {
    if(value?.isEmpty ?? true){
      return 'Field is required';
    }else{
      return null;
    }
  },
  onChanged: onChanged,
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
    );
  }
}
