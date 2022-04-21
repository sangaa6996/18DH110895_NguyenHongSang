import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nguyenhongsang_18dh110895/models/products.dart';
import 'package:nguyenhongsang_18dh110895/models/utilities.dart';

class CategoryDetail extends StatefulWidget {
  int id;
  CategoryDetail(this.id);

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return buildListView(Utilities().getProductFromCate(widget.id));
  }

  ListView buildListView(List<Products> data){
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: data[index].id != null ? Image.asset('${data[index].image}') : Image.asset(''),
          title: Text(data[index].title),
          trailing: Text(data[index].price.toString()),
          onTap: (){
            // Navigator.pushNamed(context, routeName)
          },
        );
      },
    );
  }
}