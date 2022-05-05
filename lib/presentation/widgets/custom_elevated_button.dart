import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onPressed;
  final ButtonStyle? buttonStyle;
  final Color? color;

  const CustomElevatedButton(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onPressed,
      this.buttonStyle,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
