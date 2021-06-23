import 'package:eventeno/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Icon buttonIcon;

  const CustomButtonWithIcon({
    Key key,
    this.title,
    this.onPressed,
    this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: FlatButton.icon(
          icon:buttonIcon,
          onPressed: onPressed,
          label: Text(
            title,
            style: TextStyle(color: Colors.white),
          )),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}
