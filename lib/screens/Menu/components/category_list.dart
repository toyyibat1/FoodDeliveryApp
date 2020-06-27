import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:FoodDeliveryApp/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';

class SingleCategory extends StatefulWidget {
  final catName;
  final catIcon;

  SingleCategory({
    this.catName,
    this.catIcon,
  });

  @override
  _SingleCategoryState createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? kPrimaryColor : null,
      margin: EdgeInsets.all(20.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Hero(
        tag: widget.catName,
        child: InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                child: Container(
                    child: new Stack(children: [
                  new Image.asset((widget.catIcon), width: 80.0, height: 80.0)
                ])),
              ),
              Text(
                (widget.catName),
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
