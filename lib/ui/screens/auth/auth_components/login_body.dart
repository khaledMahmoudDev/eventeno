import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          width: double.infinity,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
