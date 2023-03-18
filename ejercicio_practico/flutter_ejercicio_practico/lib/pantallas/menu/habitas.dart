import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Habitas extends StatelessWidget {
  const Habitas({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
      'Hola',
      style: TextStyle(fontSize: 30), //estilo de fuente y tamaño,color
    ),
    );
  }
}