import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:FoodDeliveryApp/screens/SignUp/signup.dart';
import 'package:flutter/material.dart';
import './background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:FoodDeliveryApp/components/rounded_button.dart';
import 'package:FoodDeliveryApp/screens/Login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WELCOME TO OUNJE',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: kPrimaryColor),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/onboarding1.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Login();
                    }),
                  );
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: KPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              )
            ]),
      ),
    );
  }
}
