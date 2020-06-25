import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:flutter/material.dart';


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

class SingleCategory extends StatelessWidget {
  final catName;
  final catIcon;

  SingleCategory(
      {this.catName,
      this.catIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
        child: Hero(
            tag: catName,
            child: Material(
              child: InkWell(
                onTap: (){},
                child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       new Center(
                         child: Container(
                           child: new Stack(children : [
                             new Image.asset((catIcon), width: 80.0, height: 80.0)
                           ])
                         ),
                         
                       ), Text((catName), style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
                     ],            
                    ),
                ),
                ),
              )
                );
  }
}

