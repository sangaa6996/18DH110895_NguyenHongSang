import 'package:flutter/cupertino.dart';
import 'package:nguyenhongsang_18dh110895/SignIn/signInPage.dart';
import 'package:nguyenhongsang_18dh110895/SignUp/signUpPage.dart';
import 'package:nguyenhongsang_18dh110895/SplashPage/SplashPage.dart';
import 'package:nguyenhongsang_18dh110895/cart/cartpage.dart';
import 'package:nguyenhongsang_18dh110895/category/category_page.dart';
import 'package:nguyenhongsang_18dh110895/detail/productpage.dart';
import 'package:nguyenhongsang_18dh110895/homepage/homepage.dart';
import 'package:nguyenhongsang_18dh110895/order/orderPages.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  HomePage.routeName: (context) => HomePage(),
  CategoryPage.routeName: (context) => CategoryPage(),
  ProductPage.routeName: (context) => ProductPage(),
  CartPage.routeName: (context) => CartPage(),
  OrderPage.routeName: (context) => OrderPage(),
};
