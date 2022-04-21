import 'dart:convert';
import 'package:nguyenhongsang_18dh110895/models/products.dart';
import 'package:http/http.dart' as http;
import 'package:quiver/strings.dart';

class Utilities {
  var url = Uri.parse('http://192.168.0.100:3000/api/food');

  static List<Products?> data = [];

  Future<List<Products>> getProducts() async{
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var content = res.body;
      print(content.toString());
      var arr = json.decode(content)['food'] as List;

      // for every element of arr map to _fromJson
      // and convert the array to list

      return arr.map((e) => _fromJson(e)).toList();
    }

    return <Products>[];
  }

  Products _fromJson(Map<String, dynamic> item) {
    return new Products(
        id: int.parse(item['id']),
        description: item['description'],
        title: item['title'],
        image: item['image'],
        price: double.parse(item['price']),
        cateId: int.parse(item['cateId']));
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter mail';
    }
    String pattern =r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
  }

  static String? validatePassword(String value){
    if(value.isEmpty){
      return 'Please enter password';
    }
    if(value.length < 8){
      return 'Password should be more than 8 characters ';
    }

  }

  static String? confirmPassword(String value, String value2){
    if(!equalsIgnoreCase(value, value2))
      return "Conform password invalid";
  }

  List<Products> find(String data){
    return Products.init().where((e) => e.title.toLowerCase().contains(data.toLowerCase())).toList();
  }

  List<Products> getProductFromCate(int id){
    var data = Products.init();
    return data.where((e) => e.cateId == id).toList();
  }
}

// equalsIgnoreCase