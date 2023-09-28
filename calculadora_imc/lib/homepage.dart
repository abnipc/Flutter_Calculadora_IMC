import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String peso = "";
  String altura = "";
  String imc_string = "";
  double IMC = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CALCULADORA DE IMC",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text("PESO:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    //labelText: 'teste',
                    hintText: "dica de texto",
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (Text) {
                    peso = Text;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text("ALTURA:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    //labelText: 'teste',
                    hintText: "dica de texto",
                    prefixIcon: Icon(Icons.height),
                  ),
                  onChanged: (Text) {
                    altura = Text;
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "SEU IMC ATUAL É:",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            imc_string,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.percent),
        onPressed: () {
          IMC = double.parse(peso) /
              (double.parse(altura) * double.parse(altura));
          imc_string = IMC.toString();

          setState(() {
            //set state é empregado para que o valor seja atualizado no campo correspondente
            imc_string = IMC.toString();
          });
        },
      ),
    );
  }
}
