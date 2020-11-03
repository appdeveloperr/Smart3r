import 'package:flutter/material.dart';

import 'NewTab/new_screen.dart';
import 'TopTab/top_screen.dart';
import 'PostTab/post_screen.dart';
import 'LanguageTab/language_screen.dart';
import '../../widgets/SlideRightRoute.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': NewScreen(),
        'title': 'New',
      },
      {
        'page': TopScreen(),
        'title': 'Top',
      },
      {
        'page': PostScreen(setHomeScreen),
        'title': 'Post',
      },
      {
        'page': LanguageScreen(),
        'title': 'Language',
      }
    ];

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void setHomeScreen() {
    setState(() {
      _selectedPageIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(124, 209, 117, 1),
          primaryColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(color: Colors.black54),
              ),
        ),
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/New.png',
                height: 25,
              ),
              title: Text('New'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/Top.png',
                height: 25,
              ),
              title: Text('Top'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/add.png',
                height: 25,
              ),
              title: Text('Post'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/Language.png',
                height: 25,
              ),
              title: Text('Language'),
            ),
          ],
        ),
      ),
    );
  }
}
