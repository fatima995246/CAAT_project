import 'package:flutter/material.dart';

import 'my_theme.dart';

typedef Validator = String? Function(String?);

class EditText extends StatelessWidget {
  String text;
  IconData icon;
  TextInputType keyboardTybe;

  bool isPassword;

  TextEditingController controller;

  Validator myValidator;
  EditText(
      {required this.text,
      required this.icon,
      this.keyboardTybe = TextInputType.text,
      this.isPassword = false,
      required this.controller,
      required this.myValidator});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width *0.1,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), border: Border.all()
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            icon: Icon(icon),
            iconColor: MyTheme.blueColor
            //icon at head of input
            ),
        keyboardType: keyboardTybe,
        obscureText: isPassword,
        controller: controller,
        validator: myValidator,
      ),
    );
  }

}
