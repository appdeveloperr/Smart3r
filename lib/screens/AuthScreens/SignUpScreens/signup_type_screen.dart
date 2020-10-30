import 'package:Anecdote/widgets/SlideLeftRoute.dart';
import 'package:flutter/material.dart';
import 'signup_with_email.dart';
import '../../../widgets/SlideRightRoute.dart';

class SignUpTypeScreen extends StatelessWidget {
  static var routeName = '/signup-type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  "Sign up with twitter",
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
                  "Sign up with facebook",
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
                      context, SlideLeftRoute(page: SignUpWithEmail()));
                },
                color: Color.fromRGBO(19, 25, 70, 1),
                icon: Image.asset(
                  'assets/images/icons/email.png',
                  height: 30,
                  width: 30,
                ),
                label: Text(
                  "Sign up with email",
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
