import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

bool checkBoxValue = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "image/icon.png",
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 30),
                Container(
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'enter your user id',
                      labelText: 'USer ID',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: "enter your password",
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    )),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: new Checkbox(
                          value: checkBoxValue,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            setState(() {
                              checkBoxValue = newValue;
                            });
                          }),
                    ),
                    Text("Remember me"),
                  ],
                ),
                SizedBox(height: 50),
                new RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: 130,
                    height: 48,
                    alignment: Alignment.center,
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
