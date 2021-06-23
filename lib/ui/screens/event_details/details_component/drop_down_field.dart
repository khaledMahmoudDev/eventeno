import 'package:flutter/material.dart';

class DropDownField extends StatelessWidget {
  final String title;
  final Function onTap;
  const DropDownField({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FormField(builder: (builder) {
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
      }),
    );
  }
}
