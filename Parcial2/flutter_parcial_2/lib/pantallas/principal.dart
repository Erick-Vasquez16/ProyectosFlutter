import 'package:flutter/material.dart';
import './menu/Dtos.dart';
import 'package:flutter_parcial_2/pantallas/menu/account.dart';
import 'package:flutter_parcial_2/pantallas/menu/creditCard.dart';
import 'package:flutter_parcial_2/pantallas/menu/groceries.dart';
import 'package:flutter_parcial_2/pantallas/menu/kitchen.dart';
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
    
    Cocina(),
    CreditCard(),
    Comida(),
    Account()
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
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Recipes'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Plans'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Groceries'),
            BottomNavigationBarItem(icon: Icon(Icons.person_add_alt_sharp), label: 'Account')
          ]),
          floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Aquí puedes agregar la lógica para manejar el evento de presionar el botón
    },
    child: Icon(Icons.add),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}