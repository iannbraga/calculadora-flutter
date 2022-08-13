import 'package:calculadora_flutter/views/calculadora.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String titulo = 'Calculadora';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: titulo,
      debugShowCheckedModeBanner: false,
      home: const Calculadora(),
    );
  }
}
