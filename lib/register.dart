import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'Animation/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    ));

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // child: new Form(
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
                        "SIGN UP",
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
                        "Welcome",
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
                    child: Column(
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
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                // child: new Form()
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    // child: new Form()
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Full Name",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'Raleway',
                                          ),
                                          border: InputBorder.none),
                                          validator: (value)=>value.isEmpty?'Name can\'t be Empty':null,
                                    ),
                                  ),
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
                                          validator: (value)=>value.isEmpty?'Email can\'t be Empty':null,
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
                                          validator: (value)=>value.isEmpty?'Email can\'t be Empty':null,

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
                                          hintText: "Password Confirmation",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'Raleway',
                                          ),
                                          border: InputBorder.none),
                                          validator: (value)=>value.isEmpty?'Email can\'t be Empty':null,

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
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange[900]),
                              child: Center(
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.5,
                            new InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.black),
                                  child: Center(
                                      child: Text(
                                    "BACK",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  )),
                                ))),
                      ],
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
