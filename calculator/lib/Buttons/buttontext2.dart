import 'package:flutter/material.dart';

class NotunNotunButtonColumn extends StatelessWidget {
  final String buttonText;
  final double buttonHeight;
  final Color buttonColor;
  final Function(String) onPressed;
  const NotunNotunButtonColumn({
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
    height: buttonHeight,
    width: 97.5,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(width: 0.2, style: BorderStyle.solid)),
          padding: EdgeInsets.fromLTRB(40, 0, 35.3, 0)),
      onPressed: () => onPressed(buttonText), 
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    ),
  );

  }
}
