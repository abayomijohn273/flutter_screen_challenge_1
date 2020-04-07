import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "Montserrat",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
