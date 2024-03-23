import 'package:flutter/material.dart';
import 'package:ola_mundo/TelaMod.dart';
import 'package:ola_mundo/main.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (banhar == '') {
                banhar = 'banhou';
              } else {
                banhar = '';
              }
            });
          },
          child: const Icon(Icons.add),
        ));
  }
}
