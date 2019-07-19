import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_scree.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login form",
      home: Scaffold(
        body: LoginScreen(),
      )
    );
  }
}
