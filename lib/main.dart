
import 'package:caats_project/signup.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SignUp.routeName: (context) => SignUp(),
        Login.routeName: (context) => Login(),
      },
    );
  }
}
