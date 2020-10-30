import 'package:Anecdote/widgets/SlideLeftRoute.dart';
import 'package:flutter/material.dart';

import '../SignUpScreens/create_password_screen.dart';
import '../../../widgets/SlideRightRoute.dart';

class SignUpWithEmail extends StatelessWidget {
  static const routeName = '/signupwithemail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign up",
          style: TextStyle(
            color: Color.fromRGBO(19, 25, 70, 1),
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "What is your email address?",
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
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: new RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "By continuing, you agree to Smart3r's "),
                        TextSpan(
                          text: 'Terms of Use',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: " and confirm that you have read Smart3r's "),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                  // Text(
                  //   "By continuing, you agree to Smart3r's Term of Use and confirm that you have read Smart3r's Privacy Policy.",
                  //   style: TextStyle(fontSize: 14, color: Colors.grey),
                  // ),
                  ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                height: 45,
                child: RaisedButton(
                  color: Color.fromRGBO(19, 25, 70, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, SlideLeftRoute(page: CreatePassword()));
                  },
                  child: Text(
                    "Next",
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
      ),
    );
  }
}
