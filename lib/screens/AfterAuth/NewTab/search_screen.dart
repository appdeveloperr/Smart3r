import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("/");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 45,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color.fromRGBO(19, 25, 70, 1),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 0, bottom: 0, top: 12, right: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Text(""),
    );
  }
}
