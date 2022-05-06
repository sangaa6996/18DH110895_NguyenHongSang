import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nguyenhongsang_18dh110895/models/orders.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class OrderDetail extends StatelessWidget {
  List<Orders> orders = Orders.getOrders();

  OrderDetail();

  @override
  Widget build(BuildContext context) {
    print('-------------------------------------${orders.length}');
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return ProductItemList(
                orders[index],
              );
            }),
      ),
    );
  }
}

class ProductItemList extends StatelessWidget {
  Orders order;

  ProductItemList(this.order);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(order.date.toString()),
                      Expanded(
                          child: Text(
                        order.total.toString(),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
