import 'package:flutter/material.dart';

class NotunNotunButton extends StatelessWidget {
  final String buttonText;
  final double buttonHeight;
  final Color buttonColor;
  final Function(String) onPressed;
  const NotunNotunButton({
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry buttonPadding = EdgeInsets.fromLTRB(43, 0, 43.3, 0);
    if (buttonText == "00") {
      buttonPadding = EdgeInsets.fromLTRB(30, 0, 36.3, 0);
    }
    return Container(
      height: buttonHeight,
      width: 104.6,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(
              width: 0.2,
              style: BorderStyle.solid,
            ),
          ),
          padding: buttonPadding,
        ),
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
