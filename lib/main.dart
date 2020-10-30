import 'package:flutter/material.dart';

import 'screens/AfterAuth/tabs_screen.dart';
import 'screens/AuthScreens/SignUpScreens/signup_type_screen.dart';
import 'screens/AuthScreens/LoginScreens/login_type_screen.dart';
import 'screens/AuthScreens/LoginScreens/login_with_email_screen.dart';
import 'screens/AuthScreens/LoginScreens/forgot_password_screen.dart';
import 'screens/AfterAuth/DrawerTabs/legal_screen.dart';
import 'screens/AfterAuth/DrawerTabs/prefrence_screen.dart';
import 'screens/AfterAuth/DrawerTabs/contact_screen.dart';
import 'screens/AfterAuth/NewTab/search_screen.dart';
import 'screens/AfterAuth/NewTab/post_details_screen.dart';
import 'screens/AfterAuth/NewTab/source_list_screen.dart';
import 'screens/AuthScreens/choose_auth_type_screen.dart';
import 'screens/AuthScreens/SignUpScreens/signup_with_email.dart';
import 'screens/AuthScreens/SignUpScreens/create_password_screen.dart';
import 'screens/AuthScreens/SignUpScreens/create_username_screen.dart';
import 'screens/AuthScreens/SignUpScreens/add_icon_screen.dart';
import 'screens/AuthScreens/SignUpScreens/select_date_of_birth.dart';
import 'screens/AuthScreens/SignUpScreens/select_job_screen.dart';
import 'screens/AuthScreens/SignUpScreens/select_where_are_you_from.dart';
import 'screens/AfterAuth/NewTab/write_comment_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anecdote',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(124, 209, 117, 1),
        // primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        '/signup-type': (ctx) => SignUpTypeScreen(),
        '/login-type': (ctx) => LoginTypeScreen(),
        '/login-with-email': (ctx) => LoginWithEmailScreen(),
        '/forgot-password': (ctx) => ForgotPasswordScreen(),
        '/legal': (ctx) => LegalScreen(),
        '/prefrence': (ctx) => PrefrenceScreen(),
        '/contactus': (ctx) => ContactUsScreen(),
        '/search': (ctx) => SearchScreen(),
        '/postdetail': (ctx) => PostDetialScreen(),
        '/write-comment': (ctx) => WriteCommentScreen(),
        '/sourcelist': (ctx) => SourceListScreen(),
        '/chooseauth': (ctx) => ChooseAuthTypeScreen(),
        '/signupwithemail': (ctx) => SignUpWithEmail(),
        '/create-password': (ctx) => CreatePassword(),
        '/create-username': (ctx) => CreateUserName(),
        '/add-icon': (ctx) => AddIconScreen(),
        '/select-dob': (ctx) => SelectDateOfBithScreen(),
        '/select-job': (ctx) => SelectJobScreen(),
        '/select-where-from': (ctx) => SelectWhereFromScreen(),
      },
    );
  }
}
