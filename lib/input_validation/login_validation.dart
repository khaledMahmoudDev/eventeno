import 'package:eventeno/input_validation/validation_item.dart';
import 'package:flutter/material.dart';

class LoginValidation extends ChangeNotifier {
  ValidationItem _email = ValidationItem(value: null, error: null);
  ValidationItem _password = ValidationItem(value: null, error: null);

  ValidationItem get email => _email;

  ValidationItem get password => _password;

  void changeEmail(String value) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      _email = ValidationItem(value: value, error: null);
    } else {
      _email = ValidationItem(value: null, error: 'wrong email format');
    }
    notifyListeners();
  }

  void changePassword(String value) {
    if (value.length >= 8) {
      _password = ValidationItem(value: value, error: null);
    } else {
      _password = ValidationItem(
          value: null,
          error: 'enter at least 8 characters');
    }
    notifyListeners();
  }

  bool get isValid {
    if (_email.value != null && _password.value != null) {
      return true;
    } else {
      return false;
    }
  }
}
