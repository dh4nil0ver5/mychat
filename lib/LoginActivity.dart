import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget{
  @override
  _LoginActivityState createState() => _LoginActivityState();
}
class _LoginActivityState extends State<LoginActivity>{
    bool pressSignIn = true;
    bool pressSignUp = true;
    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
          home: Scaffold(
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blueAccent,
                        Colors.white,
                      ],
                    )
                ),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 100),
                        child: Icon(
                          Icons.account_circle,
                          size: 100.0,
                          color: Colors.brown[900],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.blueAccent,
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.people),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                    borderRadius: BorderRadius.circular(25.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                                    borderRadius: BorderRadius.circular(25.0)))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: TextField(
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.blueAccent,
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.people),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                    borderRadius: BorderRadius.circular(25.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                                    borderRadius: BorderRadius.circular(25.0)))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RaisedButton(
                              child: new Text('Sign in'),
                              textColor: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              color: pressSignIn ? Colors.green : Colors.blue,
                              onPressed: () => setState(() => pressSignIn = !pressSignIn),
                            ),
                            RaisedButton(
                              child: new Text('Sign up'),
                              textColor: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              color: Colors.redAccent,
                              onPressed: () {
                                pressSignUp = !pressSignUp;
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      );
    }
}