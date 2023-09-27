import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); // A classe MyApp é definida abaixo, aqui ela está sendo instanciada
}

//classe MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), //classe HomePage sendo instanciada
    );
  }
}

//definição da classe HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Scafold é um template de app
    return Scaffold(
        //adiciona barra ao topo do corpo do app
        appBar: AppBar(
          title: Text("CALCULADORA DE IMC"),
        ),
        //adiciona corpo
        body: Column(
          children: [
            Text("Peso"),
            Text("Altura"),
          ],
        ));
  }
}
