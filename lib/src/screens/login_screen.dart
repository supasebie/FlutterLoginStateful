import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom: 10.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }


  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(  
        labelText: 'Email Address',
        hintText: 'you@amail.com',
      ),
    );
  }

  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(  
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }

  Widget submitButton(){
    return RaisedButton(
      onPressed: () {
        formKey.currentState.reset();
      },
      child: Text("Submit"),
    );
  }
}

