import 'package:flutter/material.dart';
import 'package:bloom/screens/login/login/components/background.dart';
import 'package:bloom/components/acheck.dart';
import 'package:bloom/components/rounded_button.dart';
import 'package:bloom/screens/signup/signup/components/body.dart';
import 'package:bloom/pages/homepage.dart';
import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class BodyLogin extends StatelessWidget {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<FirebaseUser> _signIn(BuildContext context) async{

    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    FirebaseUser userDetails = await _firebaseAuth.signInWithCredential(credential);

    ProviderDetails providerInfo = ProviderDetails(userDetails.providerId);

    List<ProviderDetails> providerData = List<ProviderDetails>();
    providerData.add(providerInfo);



    Navigator.push(context,
        MaterialPageRoute(
          builder:(context) => HomePage(),
        )
    );
    return userDetails;
  }

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
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Color(0xFF6F35A5)),
                ),
                SizedBox(height: size.height * 0.04),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: '  Email',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
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
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF6F35A5),
                          fontSize: 18),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Color(0xFF6F35A5)))),
                ),
                SizedBox(height: 35,),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    signInWithEmail();
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context){
                      return HomePage();
                    }),);
                  },
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
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
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
    );
  }

  Future<FirebaseUser> getUser() async {
    return await _firebaseAuth.currentUser();
  }


  void signInWithEmail() async {

    FirebaseUser user;
    try {
      user = await _firebaseAuth.signInWithEmailAndPassword(
          email: emailController.text, password: passController.text);
    } catch (e) {
      print(e.toString());
    } finally {
      if (user != null) {
        print("Sign in Successful");
      } else {
        print("Unsuccessful");
      }
    }
  }

}

class UserDetails{

  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;
  UserDetails(this.providerDetails,this.userName,this.photoUrl,this.userEmail,this.providerData);
}

class ProviderDetails{
  ProviderDetails(this.providerDetails);
  final String providerDetails;

}