
import 'package:caats_project/signup.dart';
import 'package:flutter/material.dart';

import 'button.dart';
import 'login.dart';
import 'my_theme.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "home-screen";

  Widget build(BuildContext context) {
    return
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png",

                ),
                fit: BoxFit.fill
              )
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset("assets/images/main_logo.png")),

                Expanded(
                  flex: 1,
                    child: Image.asset("assets/images/AuditHub.png")),
                const Expanded(
                  flex: 1,
                  child: Text(
                         """                  AuditHub streamlines complex information system evaluations through automated processes,
                       minimizing reliance on specialized personnel and reducing financial overhead. Implementing this
                        CAAT aims to make audits more efficient, accurate, and financially accessible for companies """),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        text: "Sign Up", newPage: SignUp.routeName,
                      ),
                      ButtonWidget(text: "Log in" , newPage: Login.routeName,)
                    ],
                  ),
                ),

                    //Image.asset("assets/images/background.png"),
                    Expanded(
                        flex: 4,
                        child: Image.asset("assets/images/main_photo.png")),

              ],
            ),
          ),
        );

  }
}
