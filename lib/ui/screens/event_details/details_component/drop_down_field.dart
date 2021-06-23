import 'package:flutter/material.dart';

class DropDownField extends StatelessWidget {
  final String title;
  const DropDownField({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField(builder: (builder) {
      return InputDecorator(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        ),
        child: Row(
          children: [
            Text(title),
            Spacer(),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      );
    });
  }
}
