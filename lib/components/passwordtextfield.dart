import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final String hintText;
  final bool obsureText;
  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.obsureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.grey[500]),
        hintStyle: TextStyle(color: Colors.grey[500]),
        contentPadding: EdgeInsets.all(8),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC8C8C8)),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFC8C8C8), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
