import 'package:flutter/material.dart';

void showSnackbar(
    {required BuildContext context,
    required String content,
    Color? color,
    Color? textColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content, style: TextStyle(color: textColor)),
      backgroundColor: color,
    ),
  );
}
