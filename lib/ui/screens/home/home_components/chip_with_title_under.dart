import 'package:eventeno/constants/colors.dart';
import 'package:flutter/material.dart';

class ChipWithTitleUnder extends StatelessWidget {
  final String title;
  final String chipTitle;

  const ChipWithTitleUnder({
    Key key,
    this.title,
    this.chipTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Chip(
            label: Text(
          chipTitle,
          style: TextStyle(color: kChipColorTitle),
        )),
        Text(
          title,
          style: TextStyle(color: kChipColorTitle),
        ),
      ],
    );
  }
}
