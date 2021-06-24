import 'package:eventeno/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool enabled;
  const CustomButton({
    Key key,
    this.title,
    this.onPressed, this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: FlatButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          )),
      decoration: BoxDecoration(
        color: enabled?kPrimaryColor: kPrimaryColor.withOpacity(.5),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}
