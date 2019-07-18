import 'package:flutter/material.dart';

class LoginScreenBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(height: 10,),
            submitButton(),

          ],
        )
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@email.com',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
//      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password'
      ),
    );
  }

  Widget submitButton(){
    return RaisedButton(
      color: Colors.blue,
      onPressed: (){},
      child: Text("Submit", style: TextStyle(color: Colors.white),),
    );
  }

}
