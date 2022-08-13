import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const _default = Color.fromARGB(255, 0, 0, 0);
  static const _operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final int size;
  final Color color;
  final void Function(String) cb;

  const Button({
    Key? key,
    this.text = '1',
    this.size = 1,
    this.color = _default,
    required this.cb,
  }) : super(key: key);

  const Button.big({
    Key? key,
    this.text = '',
    this.size = 2,
    this.color = _default,
    required this.cb,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    this.text = '1',
    this.size = 1,
    this.color = _operation,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: size,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w200,
            fontSize: 16,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
