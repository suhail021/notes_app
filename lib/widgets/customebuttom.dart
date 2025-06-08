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
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 5),
      child: MaterialButton(
        onPressed: onTap,
        elevation: 2,
highlightColor: Colors.transparent,
splashColor: Colors.transparent,
highlightElevation: 10,

        color: color,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        minWidth: double.infinity,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
