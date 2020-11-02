import 'package:Anecdote/widgets/SlideLeftRoute.dart';
import 'package:flutter/material.dart';

import '../SignUpScreens/add_icon_screen.dart';
import '../../../widgets/SlideRightRoute.dart';

class CreateUserName extends StatefulWidget {
  static const routeName = '/create-username';

  @override
  _CreateUserNameState createState() => _CreateUserNameState();
}

class _CreateUserNameState extends State<CreateUserName> {
  TextEditingController usernameController = new TextEditingController();

  var isUserNameExist = false;

  void _checkUserNameExist(username) {
    setState(() {
      if (username == "jhon") {
        isUserNameExist = true;
      } else {
        isUserNameExist = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
                "Create username",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                  color: Color.fromRGBO(19, 25, 70, 1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  maxLines: 1,
                  controller: usernameController,
                  onChanged: (value) {
                    _checkUserNameExist(value);
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(),
                    suffixIcon: isUserNameExist
                        ? SizedBox()
                        : Image.asset(
                            "assets/images/icons/tick.png",
                          ),
                    labelText: 'Username',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: isUserNameExist
                      ? Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 30, bottom: 20),
                          child: Text(
                            "This username isn't available. Try another one.",
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
                        )
                      : Text("")),
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
                        context, SlideLeftRoute(page: AddIconScreen()));
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
