import 'package:Anecdote/screens/AfterAuth/tabs_screen.dart';
import 'package:Anecdote/widgets/SlideRightRoute.dart';
import 'package:flutter/material.dart';
import '../../../widgets/add_source_item.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  var noOfSources = 1;

  void _updateNoOfSources() {
    setState(() {
      noOfSources++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // replace this function with the code in the examples
    Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
            title: Text('Sun'),
          ),
          ListTile(
            title: Text('Moon'),
          ),
          ListTile(
            title: Text('Star'),
          ),
        ],
      );
    }

    final mediaQuery = MediaQuery.of(context);
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            content: Text(
                "Thank you, your anecdote will be reviewed by our team for approval."),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Container(
          color: Theme.of(context).primaryColor,
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).pushReplacementNamed("/");
                    Navigator.of(context).pop();
                    Navigator.push(
                        context, SlideRightRoute(page: TabsScreen()));
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color.fromRGBO(19, 25, 70, 1),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: _showDialog,
                  child: Container(
                    alignment: Alignment.center,
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "Validate",
                      style: TextStyle(
                        color: Color.fromRGBO(19, 25, 70, 1),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              child: TextField(
                maxLines: 10,
                maxLength: 300,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Write here your anecdote. Maximum 300 characters',
                  labelText: 'Add New Post',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Insert one or more links or of the sources. They will help us to check thevracity of the facts",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 5),
                itemBuilder: (BuildContext ctx, int index) {
                  return AddSourceItem(_updateNoOfSources);
                },
                itemCount: noOfSources,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
