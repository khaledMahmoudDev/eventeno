import 'package:eventeno/constants/colors.dart';
import 'package:flutter/material.dart';

class InputFieldText extends StatelessWidget {
  final String hintText;
  const InputFieldText({
    Key key, this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryLightColor),
        ),
      ),
    );
  }
}
