import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/bottomNav.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: kPrimaryColor,
            title: Text("Menu"),
          ),
          drawer: Drawer(
            elevation: 0.0,
            child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text("kareeba"),
                  accountEmail: Text("toyabdul345@gmail.com"),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: new BoxDecoration(color: kPrimaryColor),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(
                      Icons.home,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: ListTile(
                        title: Text("My Account"),
                        leading: Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ))),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("My Orders"),
                    leading: Icon(
                      Icons.shopping_basket,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Favorites"),
                    leading: Icon(Icons.favorite, color: kPrimaryColor),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings, color: kPrimaryColor),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                      title: Text("About"),
                      leading: Icon(
                        Icons.help,
                        color: kPrimaryColor,
                      )),
                )
              ],
            ),
          ),
          body: MenuBody(),
          bottomNavigationBar: BottomNavBar()),
    );
  }
}
