import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  String text;
  Function onPressed;

  AppButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 46,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        textStyle: TextStyle(fontSize: 22),
      ),
      onPressed: () => onPressed,
      child: Text(text),
    ),
  );
  }
}