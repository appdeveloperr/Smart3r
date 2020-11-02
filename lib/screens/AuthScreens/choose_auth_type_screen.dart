import 'package:flutter/material.dart';
import '../AuthScreens/SignUpScreens/signup_type_screen.dart';
import '../AuthScreens/LoginScreens/login_type_screen.dart';
import '../../widgets/SlideRightRoute.dart';
import '../../widgets/SlideLeftRoute.dart';

class ChooseAuthTypeScreen extends StatelessWidget {
  static var routeName = '/chooseauth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Sign up to Smart3r",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 22,
                color: Color.fromRGBO(19, 25, 70, 1),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250,
              height: 45,
              child: RaisedButton(
                color: Color.fromRGBO(19, 25, 70, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                      context, SlideLeftRoute(page: SignUpTypeScreen()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "You already have an account?",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 250,
              height: 45,
              child: RaisedButton(
                color: Color.fromRGBO(19, 25, 70, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                      context, SlideLeftRoute(page: LoginTypeScreen()));
                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
