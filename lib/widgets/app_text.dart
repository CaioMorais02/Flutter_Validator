import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppText extends StatelessWidget {
  String labelText;
  String hintText;
  TextEditingController controller;

  AppText(this.labelText, this.hintText, this.controller);

  @override
  Widget build(BuildContext context) {
    if (labelText == "Usuário") {
      return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Digite o seu nome animal!";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
      );
    } else {
      return TextFormField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Digite a sua senha animal!";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.number,
      );
    }
  }
}
