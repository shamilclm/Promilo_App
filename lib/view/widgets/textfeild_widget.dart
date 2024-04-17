import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hinttext;
  final String fieldhead;
  final String filedtail;
  // final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.hinttext,
    required this.fieldhead,
    required this.filedtail,
    // required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
