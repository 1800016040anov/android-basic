import 'package:flutter/material.dart';
import 'package:responsei/Login/components/background.dart';
import 'package:responsei/Signup/signup_screen.dart';
import 'package:responsei/components/already_have_an_account_acheck.dart';
import 'package:responsei/components/rounded_button.dart';
import 'package:responsei/components/rounded_input_field.dart';
import 'package:responsei/components/rounded_password_field.dart';
import 'package:responsei/menu/dashboard.dart';

class Body extends StatelessWidget {
  final TextEditingController emailController = new TextEditingController();

  Body({
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
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              controller: emailController,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Dashboard();
                    },
                  ),
                );
              },
            ),
            // ignore: deprecated_member_use

            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
