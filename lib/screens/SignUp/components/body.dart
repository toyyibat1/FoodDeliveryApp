import 'package:FoodDeliveryApp/components/already_have_an_account_check.dart';
import 'package:FoodDeliveryApp/components/rounded_button.dart';
import 'package:FoodDeliveryApp/components/rounded_inputField.dart';
import 'package:FoodDeliveryApp/components/rounded_password_field.dart';
import 'package:FoodDeliveryApp/screens/Login/login_screen.dart';
import 'package:FoodDeliveryApp/screens/SignUp/components/social_icon.dart';
import 'package:flutter/material.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Your Password",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Confirm Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login())),
            ),
            OrDivider(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/googleplus.svg",
                press: () {},
              ),
            ])
          ],
        ),
      ),
    );
  }
}
