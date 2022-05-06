class Orders {
  DateTime date;
  double total;

  Orders(this.total, this.date);
  static List<Orders> orders = [];

  static Future<void> newOrders(Orders order) async {
    orders.add(order);
  }

  static List<Orders> getOrders() {
    return orders;
  }
}
