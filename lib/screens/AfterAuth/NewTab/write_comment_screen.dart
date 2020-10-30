import 'package:flutter/material.dart';

class WriteCommentScreen extends StatelessWidget {
  static const routeName = '/write-comment';

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
                "Your comment has been submitted successfully. Thank you."),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
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
                        Navigator.of(context).pop();
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
                      maxLines: 12,
                      enabled: false,
                      focusNode: new AlwaysDisabledFocusNode(),
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        hintText: 'Write a comment.',
                      ),
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

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
