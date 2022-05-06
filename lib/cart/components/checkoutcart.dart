import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nguyenhongsang_18dh110895/models/carts.dart';
import 'package:nguyenhongsang_18dh110895/models/orders.dart';
import 'package:nguyenhongsang_18dh110895/order/orderPages.dart';

class CheckOutCart extends StatelessWidget {
  double sum;
  var now;
  CheckOutCart(this.sum, this.now);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            height: 50,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.green)),
            color: Colors.white,
            textColor: Colors.green,
            onPressed: () {},
            child: Text(
              "${sum} \$",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            height: 50,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.green)),
            onPressed: () async {
              Orders order = Orders(sum, now);
              await Orders.newOrders(order);
              print(Orders.orders.length);
              Fluttertoast.showToast(
                  msg: "Check out",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
              await Cart.Clear();
              Navigator.pushNamed(context, OrderPage.routeName);
            },
            color: Colors.green,
            textColor: Colors.white,
            child:
                Text("Check out".toUpperCase(), style: TextStyle(fontSize: 14)),
          ),
        )
      ],
    );
  }
}
