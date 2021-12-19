import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';

class SplashPage extends StatefulWidget {
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final pageList = [
    PageModel(
        color: Colors.lightBlue,
        heroImagePath: 'assets/icons/bb.png',
        title: Text('Hotel Booking',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30.0,
            )),
        body: Text('We carefully verify all banks before adding them into the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconImagePath: 'assets/icons/bb.png'),
    PageModel(
        color: Colors.deepOrange,
        heroImagePath: 'assets/icons/shopping-bag.png',
        title: Text('Shopping',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30.0,
            )),
        body: Text('We carefully verify all banks before adding them into the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconImagePath: 'assets/icons/shopping-bag.png'),
    PageModel(
        color: Colors.pink[300],
        heroImagePath: 'assets/icons/hospital-bed.png',
        title: Text('Hospital',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30.0,
            )),
        body: Text('We carefully verify all banks before adding them into the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconImagePath: 'assets/icons/hospital-bed.png'),
    PageModel(
        color: Colors.purple,
        heroImagePath: 'assets/icons/tray.png',
        title: Text('Restaurent',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30.0,
            )),
        body: Text('We carefully verify all banks before adding them into the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconImagePath: 'assets/icons/tray.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FancyOnBoarding(
          doneButtonText: "Done",
          skipButtonText: "Skip",
          pageList: pageList,
          onDoneButtonPressed: () => Navigator.of(context).pushReplacementNamed('/home'),
          onSkipButtonPressed: () => Navigator.of(context).pushReplacementNamed('/home'),
        ),
      ),
    );
  }
}
