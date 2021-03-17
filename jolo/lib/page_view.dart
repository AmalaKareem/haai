import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jolo/like.dart';

class Pageview extends StatefulWidget {
  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          children: [
            Scaffold(
              appBar: AppBar(
                title: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
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
                                borderSide:
                                    BorderSide(color: Colors.black87, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: "enter your password",
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black87, width: 2),
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
                          onPressed: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.bounceInOut);
                          },
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Container(
                            width: 130,
                            height: 48,
                            alignment: Alignment.center,
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.lightGreen,
              body: SafeArea(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Image.network(
                    "https://mpng.subpng.com/20180523/vg/kisspng-computer-icons-icon-design-life-affinity-counselling-5b05a6596ee0b7.9492984215270969214542.jpg",
                    alignment: Alignment.center,
                    width: 300,
                    height: 600,
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
