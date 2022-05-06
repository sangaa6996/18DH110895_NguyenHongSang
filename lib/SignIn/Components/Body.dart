import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/SignIn/Components/signInForm.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [header(context), SignInForm(), footer(context)],
      ),
    ));
  }

  Widget header(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topRight,
      child: Image.asset('dish.png'),
    );
  }

  Widget footer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('dish_2.png'),
      alignment: Alignment.bottomLeft,
    );
  }
}
