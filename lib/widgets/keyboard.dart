import 'package:calculadora_flutter/widgets/button.dart';
import 'package:calculadora_flutter/widgets/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          ButtonRow(
            [
              Button.operation(cb: cb, text: 'C'),
              Button.operation(cb: cb, text: 'DEL'),
              Button.operation(cb: cb, text: '%'),
              Button.operation(cb: cb, text: '/'),
            ],
          ),
          ButtonRow(
            [
              Button(cb: cb, text: '7'),
              Button(cb: cb, text: '8'),
              Button(cb: cb, text: '9'),
              Button.operation(cb: cb, text: 'X'),
            ],
          ),
          ButtonRow(
            [
              Button(cb: cb, text: '4'),
              Button(cb: cb, text: '5'),
              Button(cb: cb, text: '6'),
              Button.operation(cb: cb, text: '-'),
            ],
          ),
          ButtonRow(
            [
              Button(cb: cb, text: '1'),
              Button(cb: cb, text: '2'),
              Button(cb: cb, text: '3'),
              Button.operation(cb: cb, text: '+'),
            ],
          ),
          ButtonRow(
            [
              Button.big(cb: cb, text: '0'),
              Button(cb: cb, text: ','),
              Button.operation(cb: cb, text: '='),
            ],
          ),
        ],
      ),
    );
  }
}
