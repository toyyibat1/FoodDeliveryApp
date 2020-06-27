import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:FoodDeliveryApp/screens/Onboarding/onboarding.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'Ounje App',
                  style: GoogleFonts.aclonica(
                      textStyle: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
