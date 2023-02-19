import 'package:flutter/material.dart';
import 'package:flutter_formularios/paginas/principal.dart';

void main() {
  runApp(Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion formulario',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Principal(),
      ),
    );
  }
}