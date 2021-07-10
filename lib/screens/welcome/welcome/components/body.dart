import 'package:flutter/material.dart';
import 'package:bloom/screens/welcome/welcome/components/background.dart';
import 'package:bloom/screens/login/login/components/body.dart';
import 'package:bloom/screens/signup/signup/components/body.dart';
import 'package:bloom/components/rounded_button.dart';
import 'package:bloom/constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Bloom - we care.",
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold, color: Colors.black),
              ),
            Image.asset(
              "assets/images/bl.png",
              height: size.height * 0.30,
            ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "Login",
                press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BodyLogin();
                    },
                  ),
                );
                },
              ),
              RoundedButton(
                text: "Sign up",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BodySignup();
                    },
                  ),
                );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}