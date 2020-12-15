import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';
import 'package:myapp/register.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

// final formKey = new GlobalKey<FormState>();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String _email;
String _password;

bool validateandsave() {
  final form = _formKey.currentState;
  if (form.validate()) {
    form.save();
    return true;
  }
  return false;
}

void validateandsubmit() async {
  if (validateandsave()) {
   
    try {
      // AuthResult user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
      FirebaseUser user = (await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _email,
            password: _password)).user;
      print('Signed in: ${user.uid}');
    } catch (e) {
      print('Error: $e');
    }
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange[900],
          Colors.orange[800],
          Colors.orange[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                        ),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w100,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: new Form(
                      key: _formKey,
                      child: new Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          FadeAnimation(
                              1.4,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(225, 95, 27, .3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Email Address",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Raleway',
                                            ),
                                            border: InputBorder.none),
                                        validator: (value) => value.isEmpty
                                            ? 'Email can\'t be Empty'
                                            : null,
                                        onSaved: (value) => _email = value,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Raleway',
                                            ),
                                            border: InputBorder.none),
                                        validator: (value) => value.isEmpty
                                            ? 'Password can\'t be Empty'
                                            : null,
                                        onSaved: (value) => _password = value,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              1.5,
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Raleway',
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              1.6,
                              new InkWell(
                                  onTap: () {
                                    validateandsubmit();
                                  },
                                  child: Container(
                                    height: 50,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 50),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.orange[900]),
                                    child: Center(
                                      child: Text(
                                        "SIGN IN",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Raleway',
                                        ),
                                      ),
                                    ),
                                  ))),

                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                              1.6,
                              new InkWell(
                                  onTap: () {
                                          Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register()));
                                  },
                                  child: Container(
                                    height: 50,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 50),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black),
                                    child: Center(
                                        child: Text(
                                      "SIGN UP",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    )),
                                  ))),

                          // FadeAnimation(
                          //     1.7,
                          //     Text(
                          //       "Continue with social media",
                          //       style: TextStyle(color: Colors.grey,
                          //       fontFamily: 'Raleway',),
                          //     )),
                          // SizedBox(
                          //   height: 30,
                          // ),
                          // Row(
                          //   children: <Widget>[
                          //     Expanded(
                          //       child: FadeAnimation(
                          //           1.8,
                          //           Container(
                          //             height: 50,
                          //             decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(50),
                          //                 color: Colors.blue),
                          //             child: Center(
                          //               child: Text(
                          //                 "Facebook",
                          //                 style: TextStyle(
                          //                     color: Colors.white,
                          //                     fontFamily: 'Raleway',
                          //                     fontWeight: FontWeight.bold),
                          //               ),
                          //             ),
                          //           )),
                          //     ),
                          //     SizedBox(
                          //       width: 30,
                          //     ),
                          //     Expanded(
                          //       child: FadeAnimation(
                          //           1.9,
                          //           Container(
                          //             height: 50,
                          //             decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(50),
                          //                 color: Colors.black),
                          //             child: Center(
                          //               child: Text(
                          //                 "Github",
                          //                 style: TextStyle(
                          //                     color: Colors.white,
                          //                     fontFamily: 'Raleway',
                          //                     fontWeight: FontWeight.bold),
                          //               ),
                          //             ),
                          //           )),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
