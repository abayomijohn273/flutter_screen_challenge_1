import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ScreenText(),
          Form(),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
              shadowColor: Colors.white,
              elevation: 7.0,
              child: GestureDetector(
                onTap: null,
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          LoginLink(),
        ],
      ),
    );
  }
}

class ScreenText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 60, 0, 0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 70.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 275, top: 50),
            child: Text(
              ".",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0,
                  color: Colors.green),
            ),
          )
        ],
      ),
    );
  }
}

class Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 55, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
                labelText: "NAME",
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                )),
          ),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
                labelText: "EMAIL",
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            cursorColor: Colors.green,
            decoration: InputDecoration(
              labelText: "PASSWORD",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              focusColor: Colors.green,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
            ),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}

class LoginLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already a member?",
            style: TextStyle(
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/");
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
