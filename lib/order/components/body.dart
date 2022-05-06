import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/cart/components/checkoutcart.dart';
import 'package:nguyenhongsang_18dh110895/models/carts.dart';
import 'package:nguyenhongsang_18dh110895/models/orders.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Orders> orderdetails = Orders.getOrders();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: orderdetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: OrderItem(
                            orderdetails[index].date,
                            orderdetails[index].total,
                            orderdetails[index].totalQuantity),
                        onTap: () {},
                      ),
                      Divider()
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  DateTime date;
  double total;
  int totalQuantity;
  OrderItem(this.date, this.total, this.totalQuantity);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      padding: EdgeInsets.all(16),
      child: Row(children: [
        Expanded(child: Text(formatDate(date, [yyyy, '-', mm, '-', dd]))),
        Spacer(),
        Expanded(child: Text(totalQuantity.toString())),
        Expanded(child: Text(total.toString())),
      ]),
    );
  }
}
