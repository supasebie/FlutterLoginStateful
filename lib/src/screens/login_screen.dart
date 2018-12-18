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
      validator: (String value) {
        // Return null if valid
        // Otherwise string with error message if invalid
        if (!value.contains('@'))
        {
          return 'Please enter a valid email';
        }
        else {
          return null; // Not neccesary
        }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(  
        labelText: 'Email Address',
        hintText: 'you@amail.com',
      ),
    );
  }

  Widget passwordField(){
    return TextFormField(
      validator: (String value) {
        if(value.length < 4)
        {
          return 'Password must be at least 4 characters';
        }
      },
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
        print(formKey.currentState.validate());
      },
      child: Text("Submit"),
    );
  }
}