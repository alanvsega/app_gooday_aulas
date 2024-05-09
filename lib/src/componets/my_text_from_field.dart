import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
      super.key,
      required TextEditingController controller,
      required Color fillColor,
      required InputBorder border,
      required String hintText,
      required bool isPassword
    }) : _controller = controller,
        _fillColor = fillColor,
        _border = border,
        _hintText = hintText,
        _isPassword = isPassword;

  final TextEditingController _controller;
  final Color _fillColor;
  final InputBorder _border;
  final String _hintText;
  final bool _isPassword;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  late bool _toObscure;

  @override
  void initState() {
    super.initState();
    _toObscure = true;
  }
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._controller,
      obscureText: _toObscure && widget._isPassword,
      decoration: InputDecoration(
        fillColor: widget._fillColor,
        filled: true,
        border: widget._border,
        hintText: widget._hintText,
        suffixIcon: widget._isPassword
          ? IconButton(
              onPressed: () => {
                setState(() {
                  _toObscure = !_toObscure;
                })
              },
              icon: _toObscure
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
            )
          : null
      )
    );
  }
}