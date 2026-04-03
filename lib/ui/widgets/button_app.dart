import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textStyle,
  });

  final VoidCallback? onPressed;
  final String text;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  ButtonApp.light({Key? key, VoidCallback? onPressed, required String text}):this(
    key: key,
    text: text,
    onPressed: onPressed,
    backgroundColor: Colors.blue,
    textStyle: TextStyle(color: Colors.white)
  );

  ButtonApp.dark({Key? key, VoidCallback? onPressed, required String text}):this(
    key: key,
    text: text,
    onPressed: onPressed,
    backgroundColor: Colors.blueGrey,
    textStyle: TextStyle(color: Colors.white)
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      onPressed: onPressed,
      child: Text(text, style: textStyle),
    );
  }
}
