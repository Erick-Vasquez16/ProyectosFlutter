import 'dart:ui';

import 'package:flutter/material.dart';
class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        _imagen(),
        SizedBox(
          height: 25,
        ),
        _Nombre(),
        SizedBox(
          height: 25,
        ),
        _Numero(),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: _Fecha(),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              child: _Codigo(),
            ),
          ],
        ),
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://cdn-icons-png.flaticon.com/512/5033/5033052.png"));
  }



  Container _Nombre(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Ingrese el nombre del propietario',
              border: InputBorder.none),
        )
    );
  }
  Container _Numero(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Ingrese el numero de la tarjeta',
              border: InputBorder.none),
        )
    );
  }
  Container _Fecha(){
     return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'YY/MM',
              border: InputBorder.none),
        )
    );
  }
   Container _Codigo(){
     return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Codigo',
              border: InputBorder.none),
        )
    );
  }
}