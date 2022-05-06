import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/order/components/body.dart';

class OrderPage extends StatelessWidget {
  static String routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Orders"),
      ),
      body: Body(),
    );
  }
}
