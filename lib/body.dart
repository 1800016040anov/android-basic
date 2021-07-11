import 'package:flutter/material.dart';
import 'package:responsei/Login/login_screen.dart';
import 'package:responsei/Signup/signup_screen.dart';
import 'package:responsei/Welcome/components/background.dart';
import 'package:responsei/components/rounded_button.dart';
import 'package:responsei/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LookLive",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Text(
              "some memories must be lasting forever",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            // Image.asset("assets/images/bg.jpg", height: size.height * 0.45),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
