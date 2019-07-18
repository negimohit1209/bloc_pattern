import 'package:flutter/material.dart';
import '../mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(height: 10,),
            submitButton(),
          ],
        ),
      )
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@email.com'
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password'
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }
  Widget submitButton(){
    return RaisedButton(
      color: Colors.blue,
      onPressed: (){
        if (formKey.currentState.validate()){
          formKey.currentState.save();
          print("consome them $email and $password");
        }
      },
      child: Text("Submit", style: TextStyle(color: Colors.white),),
    );
  }

}
