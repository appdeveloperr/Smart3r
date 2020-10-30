import 'package:flutter/material.dart';

class PostDetialRightDrawer extends StatelessWidget {
  Widget _buildListTile(String title, Function tabHandler) {
    return InkWell(
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20),
        height: 45,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      onTap: tabHandler,
    );
  }

  Widget _buildSeparatorLine() {
    return Container(
      height: 1,
      margin: EdgeInsets.only(right: 100),
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          _buildSeparatorLine(),
          _buildListTile("Report this anecdote", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("This is a repost", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
        ],
      ),
    );
  }
}
