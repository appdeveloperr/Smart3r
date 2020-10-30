import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, bottom: 10),
            color: Theme.of(context).primaryColor,
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 100,
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
                    margin: EdgeInsets.only(right: 15),
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
                            left: 10, bottom: 0, top: 15, right: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
