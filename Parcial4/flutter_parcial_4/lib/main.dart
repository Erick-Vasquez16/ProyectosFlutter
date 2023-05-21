import 'package:flutter/material.dart';
import 'package:flutter_parcial_4/pantallas/principal.dart';

void main() {
  runApp(parcial4());
}
class parcial4 extends StatelessWidget {
  const parcial4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: principal(),
    );
  }
}