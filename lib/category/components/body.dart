import 'package:flutter/cupertino.dart';
import 'package:nguyenhongsang_18dh110895/category/components/category_detail.dart';
import 'package:nguyenhongsang_18dh110895/models/categories.dart';

class Body extends StatelessWidget {
  int cateId;
  Body(this.cateId);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CategoryDetail(cateId),
    );
  }
}