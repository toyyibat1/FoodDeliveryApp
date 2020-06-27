import 'package:flutter/material.dart';
import 'category_list.dart';

class MenuBody extends StatefulWidget {
  @override
  _MenuBodyState createState() => _MenuBodyState();
}

class _MenuBodyState extends State<MenuBody> {
  var categoryList = [
    {
      "name": "Burger",
      "icon": "assets/icons/harmburger.png",
    },
    {
      "name": "Pizza",
      "icon": "assets/icons/pizza.png",
    },
    {
      "name": "Fast Food",
      "icon": "assets/icons/fastfood.png",
    },
    {
      "name": "Donut",
      "icon": "assets/icons/donut.png",
    },
    {
      "name": "Chicken",
      "icon": "assets/icons/chicken.png",
    },
    {
      "name": "Coffee",
      "icon": "assets/icons/cofee.png",
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: categoryList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleCategory(
            catName: categoryList[index]['name'],
            catIcon: categoryList[index]['icon'],
          );
        });
  }
}
