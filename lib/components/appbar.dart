import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:FoodDeliveryApp/screens/Menu/components/body.dart';
import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColor,
        title: Text("Menu"), 
      ),
      
      drawer: Drawer(elevation: 0.0,
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("kareeba"), 
            accountEmail: Text("toyabdul345@gmail.com"),
            currentAccountPicture: GestureDetector(child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),),
            decoration: new BoxDecoration(
              color: kPrimaryColor
            ),
            
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: kPrimaryColor,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.person, color: kPrimaryColor,)
            )
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket, color: kPrimaryColor,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Favorites"),
              leading: Icon(Icons.favorite, color: kPrimaryColor),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings, color: kPrimaryColor),
          ),),
          InkWell(onTap: (){},
          child: ListTile(
            title: Text("About"),
            leading: Icon(Icons.help, color: kPrimaryColor,)
          ),)
        ],
      ),),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 100,
            child: Text('A card that can be tapped'),
          ),
        ),
      ),
    );
  }
}
