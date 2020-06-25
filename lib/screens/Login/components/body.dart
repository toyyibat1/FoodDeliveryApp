import 'package:FoodDeliveryApp/components/already_have_an_account_check.dart';
import 'package:FoodDeliveryApp/components/constants.dart';
import 'package:FoodDeliveryApp/components/rounded_button.dart';
import 'package:FoodDeliveryApp/components/rounded_inputField.dart';
import 'package:FoodDeliveryApp/components/rounded_password_field.dart';
import 'package:FoodDeliveryApp/screens/Login/components/background.dart';
import 'package:FoodDeliveryApp/screens/Menu/menu.dart';
import 'package:FoodDeliveryApp/screens/SignUp/signup.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("LOGIN",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0)),
          SizedBox(
            height: size.height * 0.03,
          ),
          // SvgPicture.asset("assets/icons/onboarding2.svg",
          // height: size.height * 0.35,
          // ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value){},
          ),
          RoundedPasswordField(
            hintText: "Your Password",
            onChanged: (value){},
          ),
          RoundedButton(
            text: "LOGIN",
            press: ()=> 
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> Menu())),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            press: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUp()));
            },
          )
        ],
      ),
    ),);
  }
}

