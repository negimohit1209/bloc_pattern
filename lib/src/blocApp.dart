import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen_bloc.dart';

class BlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login form using bloc",
        home: Scaffold(
          body: LoginScreenBloc(),
        )
    );
  }
}
