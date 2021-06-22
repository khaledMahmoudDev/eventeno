import 'package:eventeno/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_field_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/bg.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.9),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          margin: EdgeInsets.symmetric(horizontal: 22),
          width: double.infinity,
          height: 350,
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 85,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: InputFieldText(
                  hintText: 'Email Address',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: InputFieldText(
                  hintText: 'Password',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
