import 'package:flutter/material.dart';

class Customebuttom extends StatelessWidget {
  final String text;
  final Color color;
  VoidCallback? onTap;

  Customebuttom({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      elevation: 2,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightElevation: 10,
      minWidth: MediaQuery.of(context).size.width,
      color: color,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
