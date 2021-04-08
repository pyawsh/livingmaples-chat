import 'package:chat/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                style: fieldTextStyle(),
                decoration: textFieldInputDecoration("Email"),
              ),
              TextField(
                style: fieldTextStyle(),
                decoration: textFieldInputDecoration("Password"),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "Forgot password?",
                    style: fieldTextStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.blueAccent, Colors.blue]),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "Sign in",
                  style: fieldTextStyle(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.white70]),
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Sign in with google",
                    style: TextStyle(color: Colors.black87)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't you have an account ? ",
                    style: fieldTextStyle(),
                  ),
                  Text(
                    "Register",
                    style: fieldTextStyle(),
                  ),
                ],
              ),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
