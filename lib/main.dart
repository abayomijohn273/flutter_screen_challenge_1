import 'package:flutter/material.dart';
import "login.dart";
import 'signup.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => LoginPage(),
        "/signup": (BuildContext context) => SignupPage(),
        "/dashboard": (BuildContext context) => Dashboard()
      },
    );
  }
}
