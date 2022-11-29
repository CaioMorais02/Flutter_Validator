import 'package:carros/widgets/app_button.dart';
import 'package:carros/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

final _tLogin = TextEditingController();
final _tSenha = TextEditingController();

final _formKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }
}

_body() {
  return Form(
    key: _formKey,
    child: Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          AppText("Usuário", "Digite o seu usuário", _tLogin),
          SizedBox(
            height: 10,
          ),
          AppText("Senha", "Digite a sua senha", _tSenha),
          SizedBox(height: 20),
          AppButton("Login", _onClickLogin),
        ],
      ),
    ),
  );
}

_onClickLogin() {
  if (_formKey.currentState!.validate()) {
    return;
  }

  String login = _tLogin.text;
  String senha = _tSenha.text;

  print("Login: ${login}, Senha: ${senha}");
}
