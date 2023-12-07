
import 'package:flutter/material.dart';

import 'my_theme.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  String newPage ;
  ButtonWidget({required this.text , required this.newPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(

            primary: MyTheme.yelloColor,
            onPrimary: MyTheme.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: () {

          Navigator.of(context).pushNamed(newPage);

        },
        child: Text(text),
      ),
    );
  }
}
