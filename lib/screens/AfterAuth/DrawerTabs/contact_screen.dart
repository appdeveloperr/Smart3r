import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  static const routeName = "/contactus";

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            content: Text(
                "Your message has been sent. We will contact you as soon as possible. Thank you."),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacementNamed("/");
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              color: Theme.of(context).primaryColor,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed("/");
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Color.fromRGBO(19, 25, 70, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: _showDialog,
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Validate",
                          style: TextStyle(
                            color: Color.fromRGBO(19, 25, 70, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        maxLines: 20,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal)),
                          hintText:
                              'If you have any problem, or if you want to share any suggestion to improve this application, please do not hesitate to contact us.',
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
