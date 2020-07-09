import 'package:flutter/material.dart';
import 'package:todo/variables.dart';
import 'package:todo/widgets/auth_form.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AuthForm());
  }
}
