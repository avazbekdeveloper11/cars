import 'package:cars/screens/sign_in/sign_in_body/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  PhoneNumber? _phoneNumber;

  @override
  void initState() {
    super.initState();
    _phoneNumber = PhoneNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _phoneNumber);
  }
}
