import 'package:flutter/material.dart';
import 'package:notes_app2/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
