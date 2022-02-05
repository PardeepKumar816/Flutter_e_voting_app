import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String? labelText;
  final bool? obsureText;
  static TextEditingController? controller;
  TextFields({this.labelText, this.obsureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        obscureText: obsureText!,
        obscuringCharacter: '*',
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          contentPadding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
