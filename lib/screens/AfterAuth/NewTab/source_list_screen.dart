import 'package:flutter/material.dart';
import '../DrawerTabs/legal_screen.dart';

class SourceListScreen extends StatelessWidget {
  static const routeName = "/sourcelist";

  List<String> sourceList = new List();

  @override
  Widget build(BuildContext context) {
    sourceList.add("https://en.wikipedia.org/wiki/Source");
    sourceList.add("https://lmgtfy.app/?q=source");
    sourceList.add("https://fr.wikipedia.org/wiki/Essay");

    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
        color: Colors.black,
      )),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(LegalScreen.routeName,
                        arguments: {"loadurl": sourceList[index]});
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      sourceList[index],
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.black26,
                ),
              ],
            );
          },
          itemCount: sourceList.length,
        ),
      ),
    );
  }
}
