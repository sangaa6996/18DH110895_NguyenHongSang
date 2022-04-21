import 'package:flutter/cupertino.dart';
import 'package:nguyenhongsang_18dh110895/SignIn/signInPage.dart';
import 'package:nguyenhongsang_18dh110895/SignUp/signUpPage.dart';
import 'package:nguyenhongsang_18dh110895/SplashPage/SplashPage.dart';
import 'package:nguyenhongsang_18dh110895/category/category_page.dart';
import 'package:nguyenhongsang_18dh110895/homepage/homepage.dart';

final Map<String,WidgetBuilder> routes = {
  SplashPage.routeName : (context) => SplashPage(),
  SignInPage.routeName : (context) => SignInPage(),
  SignUpPage.routeName : (context) => SignUpPage(),
  HomePage.routeName : (context) => HomePage(),
  CategoryPage.routeName : (context) => CategoryPage()
};