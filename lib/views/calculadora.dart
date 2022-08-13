import 'package:calculadora_flutter/models/memory.dart';
import 'package:calculadora_flutter/widgets/display.dart';
import 'package:calculadora_flutter/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Display(text: memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
