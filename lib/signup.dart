import 'package:caats_project/signup.dart';
import 'package:flutter/material.dart';
import 'edit-text.dart';
import 'home_page.dart';
import 'login.dart';
import 'my_theme.dart';

class SignUp extends StatefulWidget {
  static const String routeName = "SignUp";

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController(text: 'caat@gmail.com');
  var passwordController = TextEditingController(text: '123456');
  var confermationPasswordController= TextEditingController(text: '123456');
  var nameController= TextEditingController(text:'fatma');
  var companyNameController= TextEditingController(text:"catt");
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
              padding: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/images/main_photo.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
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
                            text: "user name",
                            icon: Icons.person,
                            controller: nameController,
                            myValidator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "please enter the user name";
                              }
                              return null;
                            },
                          ),
                          EditText(
                            text: "Company Name",
                            icon: Icons.personal_video,
                            controller: companyNameController,
                            myValidator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "please enter your Company name";
                              }
                              return null;
                            },
                          ),
                          EditText(
                            text: 'Email',
                            icon: Icons.alternate_email_outlined,
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
                          EditText(
                            icon: Icons.lock,
                            text: 'conformation password',
                            controller: confermationPasswordController,
                            isPassword: true,
                            keyboardTybe: TextInputType.number,
                            myValidator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return "please conform the password you entered";
                              }
                              if (text != passwordController.text) {
                                return "password doesn't match";
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
                              SignUp();
                            }, child: Text('Sign Up'),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("already have an account?",
                                  style: Theme.of(context).textTheme.titleMedium),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(Login.routeName);
                                  },
                                  child: Text("LOG IN",
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
  void SignUp()  {
    if (formKey.currentState?.validate() == true) {
      Navigator.of(context).pushNamed(HomePage.routeName);
    }
  }
}
