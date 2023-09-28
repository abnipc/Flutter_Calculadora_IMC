import 'package:calculadora_imc/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  ); // A classe MyApp é definida abaixo, aqui ela está sendo instanciada
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
