import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/SignIn/Components/Body.dart';

class SignInPage extends StatefulWidget {
  static String routeName = "/sign_in";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}
