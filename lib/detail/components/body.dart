import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nguyenhongsang_18dh110895/detail/components/addtocart.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class Body extends StatefulWidget {
  Products product;
  Body(this.product);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category: ${widget.product.title}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("Price: ${widget.product.price}"),
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(widget.product.image)),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Text("Description: ${widget.product.description}"),
            flex: 1,
          ),
          SizedBox(
            height: 10,
          ),

          // SizedBox(
          //   height: 10,
          // ),
          // Expanded(
          //   child: Text("Category: ${product.cateId}"),
          //   flex: 1,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (quantity > 0) {
                      quantity--;
                    }
                  });
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "${quantity}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    quantity++;
                  });
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1)),
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
          AddProductToCart(widget.product, quantity)
        ],
      ),
    );
  }
}
