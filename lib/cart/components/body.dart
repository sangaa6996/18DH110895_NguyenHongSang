import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/cart/components/checkoutcart.dart';
import 'package:nguyenhongsang_18dh110895/models/carts.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<CartItem> cartdetails = Cart().getCart();
  double sum = 0.0;
  DateTime now = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cartdetails.forEach((item) {
      sum = sum + item.product.price * item.quantity;
    });
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
                itemCount: cartdetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: CartItem(
                          cartdetails[index].product,
                          cartdetails[index].quantity,
                        ),
                        onTap: () {
                          setState(() {
                            cartdetails.removeAt(index);
                            sum = 0.0;
                            cartdetails.forEach((item) {
                              sum = sum + item.product.price * item.quantity;
                            });
                          });
                        },
                      ),
                      Divider()
                    ],
                  );
                }),
          ),
          CheckOutCart(sum, now, cartdetails)
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  Products product;
  int quantity;

  CartItem(this.product, this.quantity);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      padding: EdgeInsets.all(16),
      child: Row(children: [
        SizedBox(width: 100, height: 100, child: Image.asset(product.image)),
        Expanded(child: Text(product.title)),
        Expanded(child: Text(product.price.toString())),
        Expanded(child: Text(quantity.toString())),
        Icon(Icons.delete_outlined)
      ]),
    );
  }
}
