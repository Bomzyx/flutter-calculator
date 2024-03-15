import "package:flutter/material.dart";

class Button extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  const Button({
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttontapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: ClipRRect(
        child: Container(
          color: color,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
