import 'package:nguyenhongsang_18dh110895/cart/components/body.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class Orders {
  DateTime date;
  double total;
  List<CartItem> items;
  int totalQuantity = 0;

  Orders(this.total, this.date, this.items) {
    for (CartItem item in items) {
      totalQuantity += item.quantity;
    }
  }
  static List<Orders> orders = [];

  static Future<void> newOrders(Orders order) async {
    orders.add(order);
  }

  static List<Orders> getOrders() {
    return orders;
  }
}
