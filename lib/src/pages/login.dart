import 'package:app_gooday/src/componets/color_style.dart';
import 'package:app_gooday/src/componets/my_text_from_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BackButton(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Acesse',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40
            ),
          ),
          const Text(
            'com E-mail e Senha',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12
            ),
          ),
          MyTextFormField(
            controller: TextEditingController(
              text: 'E-mail'
            ), 
            fillColor: Colors.white, 
            border: InputBorder.none,
            hintText: 'Digite seu e-mail', 
            isPassword: false
          ),
          MyTextFormField(
            controller: TextEditingController(
              text: 'Sennha'
            ), 
            fillColor: Colors.white, 
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorStyle.primary,
                style: BorderStyle.solid
              )
            ),
            hintText: 'Digite sua senha', 
            isPassword: true
          ),
        ],
      ),
    );
  }
}