import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final int value;
  final Function funcao;

  Button({@required this.value, @required this.funcao});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        value.toString(),
        style: TextStyle(fontSize: 25),
      ),
      onPressed: funcao,
    );
  }
}
