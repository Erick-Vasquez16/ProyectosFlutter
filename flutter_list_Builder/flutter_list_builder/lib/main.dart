import 'package:flutter/material.dart';
import 'package:flutter_list_builder/Paginas/Principal.dart';

void main() {
  runApp(ListandBuilder());
}

class ListandBuilder extends StatelessWidget {
  const ListandBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}