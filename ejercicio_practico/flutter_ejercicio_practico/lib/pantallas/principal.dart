import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ejercicio_practico/pantallas/menu/habitas.dart';
import 'package:flutter_ejercicio_practico/pantallas/menu/home.dart';
import 'package:flutter_ejercicio_practico/pantallas/menu/terrestres.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _seleccionado = 0;
  void _barraNavega(int index){
    setState(() {
      _seleccionado = index;
    });
  }
    final List<Widget> _paginas = [
    
    Home(),  
    Habitas(),
    Terrestres()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_seleccionado],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _seleccionado,
          onTap: _barraNavega,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.travel_explore), label: 'Habitas'),
            BottomNavigationBarItem(icon: Icon(Icons.food_bank_outlined), label: 'Terrestres')
          ]),
    );
  }
}