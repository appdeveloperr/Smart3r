import 'package:Anecdote/widgets/SlideLeftRoute.dart';
import 'package:flutter/material.dart';

import '../screens/AuthScreens/choose_auth_type_screen.dart';
import '../screens/AfterAuth/DrawerTabs/legal_screen.dart';
import '../screens/AfterAuth/DrawerTabs/prefrence_screen.dart';
import '../screens/AfterAuth/DrawerTabs/contact_screen.dart';

class MainLeftDrawer extends StatelessWidget {
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
          _buildListTile("Login", () {
            Navigator.push(
                context, SlideLeftRoute(page: ChooseAuthTypeScreen()));
          }),
          _buildSeparatorLine(),
          _buildListTile("Preference", () {
            Navigator.push(context, SlideLeftRoute(page: PrefrenceScreen()));
          }),
          _buildSeparatorLine(),
          _buildListTile("Favorites", () {
            Navigator.of(context).pop();
          }),
          _buildSeparatorLine(),
          _buildListTile("Legal", () {
            Navigator.of(context).pushNamed(LegalScreen.routeName, arguments: {
              "loadurl": "https://www.technewsworld.com/perl/section/tech-blog"
            });
          }),
          _buildSeparatorLine(),
          _buildListTile("Contact", () {
            Navigator.push(context, SlideLeftRoute(page: ContactUsScreen()));
          }),
          _buildSeparatorLine(),
        ],
      ),
    );
  }
}
