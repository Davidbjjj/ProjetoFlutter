import 'package:flutter/material.dart';

void main() {
  runApp(BotarNome(
    title: 'Daivin do balacobaco',
  ));
}

class BotarNome extends StatelessWidget {
  final String title;

  const BotarNome({required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  @override
  State<Contador> createState() {
    return Contando();
  }
}

class Contando extends State<Contador> {
  int contado = 0;
  String banhar = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clicou, Banhou'),
        titleTextStyle: TextStyle(
            fontSize: 50,
            backgroundColor: const Color.fromARGB(255, 19, 80, 185),
            color: Colors.white),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              contado++;

              if (contado > 0) {
                banhar = 'banhou';
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Terminou $banhar',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: 20), // Espaço entre os textos
              Text(
                'clique para banhar',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
