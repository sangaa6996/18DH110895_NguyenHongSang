import 'package:nguyenhongsang_18dh110895/cart/components/body.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';

class Cart {
  static List<CartItem> cart = [];
  void addProductToCart(Products product, quantity) {
    cart.add(CartItem(product, quantity));
  }

  static Future<void> Clear() async {
    cart.clear();
  }

  List<CartItem> getCart() {
    return cart;
  }
}
