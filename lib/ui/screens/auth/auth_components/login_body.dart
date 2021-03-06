import 'package:eventeno/constants/colors.dart';
import 'package:eventeno/input_validation/login_validation.dart';
import 'package:eventeno/ui/components/custom_button.dart';
import 'package:eventeno/ui/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/input_field_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputValidation = Provider.of<LoginValidation>(context);

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
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                  ),
                  onChanged: (newText) {
                    inputValidation.changeEmail(newText);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  onChanged: (value) {
                    inputValidation.changePassword(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: CustomButton(
                  title: 'Login',
                  enabled: inputValidation.isValid,
                  onPressed: inputValidation.isValid?(){
                    return Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false);
                  }:null
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
