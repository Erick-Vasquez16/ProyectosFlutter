import 'package:flutter/material.dart';
import 'package:flutter_filas_columnas/Paginas/Principal.dart';

void main() {
  runApp(RowCols());
}
//no cambia
class RowCols extends StatelessWidget {
  const RowCols({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Filas y columnas',
      home: Principal(),
    );
  }
}