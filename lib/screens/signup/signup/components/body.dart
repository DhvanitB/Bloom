import 'package:flutter/material.dart';
import 'package:bloom/screens/signup/signup/components/background.dart';
import 'package:bloom/components/rounded_button.dart';
import 'package:bloom/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';


class BodySignup extends StatelessWidget {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Scaffold(
          body: Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 60,),
                  Text(
                    "Signup",
                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Color(0xFF6F35A5),),
                  ),
                  SizedBox(height: size.height * 0.04),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: '  Email',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6F35A5),
                        fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Color(0xFF6F35A5)))),
                  ),
                  SizedBox(height: 25,),
                  TextField(
                    controller: passController,
                    decoration: InputDecoration(
                        labelText: '  Password',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6F35A5),
                            fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Color(0xFF6F35A5)))),
                  ),
                  SizedBox(height: 35,),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () {
                      signUpWithEmail();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  SizedBox(height: size.height * 0.04),
                ],
              ),
            ),
          ),
      );
  }

  Future<FirebaseUser> getUser() async {
    return await _firebaseAuth.currentUser();
  }

  void signUpWithEmail() async {
    // marked async
    FirebaseUser user;
    try {
      user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
    } catch (e) {
      print(e.toString());
    } finally {
      if (user != null) {
        print("Sign up Successful");
      } else {
        print("Unsuccessful");
      }
    }
  }

}