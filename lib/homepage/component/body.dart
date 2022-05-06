import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/fragment/account_detail.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/fragment/favourite_fragment.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/fragment/home_fragment.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/fragment/order_detail.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/fragment/order_fragment.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/homeheader.dart';
import 'package:nguyenhongsang_18dh110895/homepage/component/menuheader.dart';
import 'package:nguyenhongsang_18dh110895/models/utilities.dart';
import 'package:nguyenhongsang_18dh110895/order/orderPages.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      HomeDetail(),
      FavoriteDetail(Utilities.data),
      OrderDetail(),
      HomeDetail(),
      AccountDetail()
    ];

    return Scaffold(
      appBar: flag
          ? AppBar(
              automaticallyImplyLeading: false,
              title: HomeHeader(),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
            if (selectIndex != 3) {
              flag = true;
            } else {
              flag = false;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [screen[selectIndex]],
        ),
      ),
    );
  }
}
