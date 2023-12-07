
import 'package:caats_project/signup.dart';
import 'package:flutter/material.dart';
import 'edit-text.dart';
import 'home_page.dart';
import 'my_theme.dart';

class Login extends StatefulWidget {
  static const String routeName = "login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController(text: 'caat@gmail.com');
  var passwordController = TextEditingController(text: '123456');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: Image.asset(
            'assets/images/main_photo.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Form(
              key: formKey,
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  EditText(
                    text: 'Email',
                    icon: Icons.person,
                    controller: emailController,
                    myValidator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return "please enter email address";
                      }
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(text);
                      if (!emailValid) {
                        return "please enter valid email address";
                      }
                      return null;
                    },
                  ),
                  EditText(
                    text: 'Password',
                    icon: Icons.lock,
                    controller: passwordController,
                    isPassword: true,
                    keyboardTybe: TextInputType.number,
                    myValidator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return "please enter password";
                      }
                      if (text.length < 6) {
                        return "password should be at least 6 chars";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(40, 10),
                        foregroundColor: MyTheme.whiteColor, backgroundColor: MyTheme.yelloColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {
                      login();
                  }, child: Text('LOG IN'),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("don't have an account?",
                          style: Theme.of(context).textTheme.titleMedium),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(SignUp.routeName);
                          },
                          child: Text("SIGN UP",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: MyTheme.whiteColor,fontWeight: FontWeight.bold)))
                    ],
                  )
                ],
              ))),
        ),

      ],
    ));
  }
  void login()  {
    if (formKey.currentState?.validate() == true) {
      Navigator.of(context).pushNamed(HomePage.routeName);
    }
  }
}
