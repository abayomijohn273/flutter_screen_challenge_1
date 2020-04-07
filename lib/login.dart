import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  dynamic password;
  _LoginPageState({this.email, this.password});

  void handleEmailChange(dynamic text) {
    setState(() {
      email = text;
    });
    print(text);
  }

  void handlePasswordChange(dynamic text) {
    setState(() {
      password = text;
    });
    print(text);
  }

  void handleLogin(String email, dynamic password) {
    if (email != null && password != null) {
      Navigator.of(context).pushNamed("/dashboard");
    } else {
      print("Empty input fields!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ScreenText(),
          Form(handleEmailChange, handlePasswordChange),
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
                onTap: () => handleLogin(email, password),
                child: Center(
                  child: Text(
                    "LOGIN",
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
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 50,
            color: Colors.transparent,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: ImageIcon(
                      AssetImage(
                        'assets/facebook.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Text(
                      "Log in with facebook",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RegisterLink(),
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
              "Hello",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 128, 0, 0),
            child: Text(
              "There",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 235, top: 128),
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
  Function handleEmailChange;
  Function handlePasswordChange;
  Form(this.handleEmailChange, this.handlePasswordChange);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (text) => handleEmailChange(text),
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
            onChanged: (text) => handlePasswordChange(text),
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
          SizedBox(
            height: 5,
          ),
          Container(
              alignment: Alignment(1, 0),
              padding: EdgeInsets.only(top: 15, left: 20),
              child: InkWell(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                    decoration: TextDecoration.underline,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class RegisterLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "New to Spotify?",
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
                Navigator.of(context).pushNamed("/signup");
              },
              child: Text(
                "Register",
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
