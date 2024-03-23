import 'package:flutter/material.dart';
import 'package:ola_mundo/TelaMod.dart';
import 'package:ola_mundo/main.dart';

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
