import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
        Colors.lightBlue[200],
        Colors.purple,
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 270.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
                Image.asset(
                  'assets/icons/login.png',
                  width: 95,
                  height: 95,
                  fit: BoxFit.cover,
                ),
                //SizedBox(height: 7),
                Container(
                  height: height * 0.7,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 3,
                              height: 25,
                              color: Colors.lightBlue,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                                Navigator.pushNamed(context, '/register');
                              },
                              child: Text(
                                "Signin",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'username',
                            helperText: '',
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'username',
                            helperText: '',
                            prefixIcon: Icon(
                              Icons.lock_open,
                            ),
                          ),
                        ),
                      ),
                      //button
                      Container(
                        width: width * 0.5,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                            Colors.lightBlue[200],
                            Colors.purple,
                          ]),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: FlatButton(
                          child: Text(
                            'LogIn',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Column(
                          children: [
                            Text("Or Login Using"),
                            SizedBox(height: 15),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/icons/facebook.png",
                                      height: 40,
                                    ),
                                    Image.asset(
                                      "assets/icons/google.png",
                                      height: 40,
                                    ),
                                    Image.asset("assets/icons/twitter.png", height: 40),
                                    Image.asset("assets/icons/snapchat.png", height: 40),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
