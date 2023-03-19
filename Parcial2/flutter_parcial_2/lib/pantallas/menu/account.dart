import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        _Imagen(),
        SizedBox(
          height: 10,
        ),
        Text("PARCIAL 2 ETPS3"),
        Text("Thomas Edmundo Martinez Mejia, Carne: 25-0533-2018"),
        Text("Erick Oswaldo Vasquez Ortiz, Carne: 25-1776-2019")
      ],
    );
  }

  Container _Imagen(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://cdn-icons-png.flaticon.com/512/4726/4726440.png"));
  }
}