import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.error, super.key});
  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(error));
  }
}
