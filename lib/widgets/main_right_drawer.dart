import 'package:flutter/material.dart';

class MainRightDrawer extends StatelessWidget {
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
      margin: EdgeInsets.only(right: 150),
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
          _buildListTile("Animals", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Arts", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Comics", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Figures", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Label", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Cooking", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Expressions", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Geography", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("History", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Games", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
        ],
      ),
    );
  }
}
