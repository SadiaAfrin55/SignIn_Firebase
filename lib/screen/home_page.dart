import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: height * 0.3, margin: EdgeInsets.only(top: 40), child: Image.asset("assets/icons/background.png")),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                height: height * 0.7,
                child: Column(
                  children: [
                    Text("Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                          fontSize: 24.0,
                        )),
                    SizedBox(height: 3),
                    Text(
                      "Lorem Ipsum has been the industry's standard",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: width * 0.7,
                      height: height * 0.07,
                      child: FlatButton(
                        child: Text(
                          'LogIn / Register',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        color: Colors.lightBlue[300],
                        textColor: Colors.white,
                        splashColor: Colors.lightBlueAccent[300],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: width * 0.7,
                      height: height * 0.07,
                      child: FlatButton(
                        child: Text(
                          'Visit Home',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        color: Colors.lightBlue[300],
                        textColor: Colors.white,
                        splashColor: Colors.lightBlueAccent[300],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Want to use app your own way?"),
                        SizedBox(width: 3),
                        FlatButton(
                          child: Text(
                            "Translate",
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(60),
                                    topLeft: Radius.circular(60),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.pink,
                                          ),
                                          title: Text("Bangla"),
                                        ),
                                        ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.pink,
                                          ),
                                          title: Text("Bangla"),
                                        ),
                                        ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.pink,
                                          ),
                                          title: Text("Bangla"),
                                        ),
                                        ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.pink,
                                          ),
                                          title: Text("Bangla"),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
