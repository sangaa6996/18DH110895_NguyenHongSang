import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/category/components/body.dart';

class CategoryPage extends StatelessWidget {

  static String routeName = "/categoryDetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(ModalRoute.of(context)!.settings.arguments as int),
    );
  }
}