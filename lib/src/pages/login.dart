import 'package:app_gooday/src/componets/color_style.dart';
import 'package:app_gooday/src/componets/my_button.dart';
import 'package:app_gooday/src/componets/my_text_from_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: ColorStyle.primary,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: ColorStyle.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Acesse',
              style: TextStyle(
                color: ColorStyle.text,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18),
              child: Text(
                'com E-mail e Senha',
                style: TextStyle(
                  color: ColorStyle.text,
                  fontSize: 12,
                ),
              ),
            ),
            const Text(
              'E-mail',
              style: TextStyle(
                color: ColorStyle.text,
                fontSize: 10,
              ),
            ),
            MyTextFormField(
              controller: TextEditingController.fromValue(TextEditingValue.empty), 
              fillColor: ColorStyle.field, 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none
              ), 
              hintText: 'Digite seu E-mail', 
              isPassword: false
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'Senha',
                style: TextStyle(
                  color: ColorStyle.text,
                  fontSize: 10,
                ),
              ),
            ),
            MyTextFormField(
              controller: TextEditingController.fromValue(TextEditingValue.empty), 
              fillColor: ColorStyle.field, 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none
              ), 
              hintText: 'Digite sua Senha', 
              isPassword: true
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 24),
              child: Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _checkBoxValue,
                        onChanged: (value) {
                          setState(() {
                            _checkBoxValue = value!;
                          });
                        },
                        activeColor: ColorStyle.primary,
                        side: const BorderSide(color: ColorStyle.primary),
                      ),
                      const Text(
                        'Lembrar senha',
                        style: TextStyle(
                          color: ColorStyle.text,
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: ColorStyle.text,
                      fontSize: 12
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  buttonPropotion: 0.4,
                  marginSize: 0,
                  label: 'Acessar',
                  isPrimary: true,
                  onPressedButton: () => {
                    Navigator.pushNamed(context, '/introduction')
                  },
                ),
                MyButton(
                  buttonPropotion: 0.4,
                  marginSize: 0,
                  label: 'Cadastrar',
                  isPrimary: false,
                  onPressedButton: () {}
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(child: Divider()),
                  Text(
                    '  Ou continue com  ',
                    style: TextStyle(
                      color: ColorStyle.text,
                      fontSize: 14
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 60, right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/2023_Facebook_icon.svg/1024px-2023_Facebook_icon.svg.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}