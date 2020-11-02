import 'package:Anecdote/widgets/SlideLeftRoute.dart';
import 'package:flutter/material.dart';
import '../LoginScreens/login_with_email_screen.dart';
import '../../../widgets/SlideRightRoute.dart';

class LoginTypeScreen extends StatelessWidget {
  static var routeName = '/login-type';

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
              "Login to Smart3r",
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
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {},
                color: Color.fromRGBO(19, 25, 70, 1),
                icon: Image.asset(
                  'assets/images/icons/twitter.png',
                  height: 30,
                  width: 30,
                ),
                label: Text(
                  "Login with twitter",
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
            Container(
              width: 250,
              height: 45,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {},
                color: Color.fromRGBO(19, 25, 70, 1),
                icon: Image.asset(
                  'assets/images/icons/facebook.png',
                  height: 30,
                  width: 30,
                ),
                label: Text(
                  "Login with facebook",
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
            Container(
              width: 250,
              height: 45,
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {
                  Navigator.push(
                      context, SlideLeftRoute(page: LoginWithEmailScreen()));
                },
                color: Color.fromRGBO(19, 25, 70, 1),
                icon: Image.asset(
                  'assets/images/icons/email.png',
                  height: 30,
                  width: 30,
                ),
                label: Text(
                  "Login with email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
