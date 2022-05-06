import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/detail/components/body.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class ProductPage extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(arguments.product.title),
      ),
      body: Body(arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Products product;

  ProductDetailsArguments(this.product);
}
