import 'package:flutter/material.dart';
import 'package:responsei/components/text_field_container.dart';
import 'package:responsei/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final TextEditingController pass = new TextEditingController();
  final controller;
  final ValueChanged<String> onChanged;
  RoundedPasswordField({
    Key key,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
