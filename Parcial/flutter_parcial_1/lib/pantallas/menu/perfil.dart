import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text("PARCIAL 1 ETPS3"),
        Text("Thomas Edmundo Martinez Mejia, Carne: 25-0533-2018"),
        Text("Erick Oswaldo Vasquez Ortiz, Carne: 25-1776-2019"),
        _imagen(),
        SizedBox(
          height: 10,
        ),
        _Carne(),
        SizedBox(
          height: 3,
        ),
        _nombre(),
        SizedBox(
          height: 3,
        ),
        _apellidos(),
        SizedBox(
          height: 3,
        ),
        _direccion(),
        SizedBox(
          height: 3,
        ),
        _passwordinput(),
        SizedBox(
          height: 3,
        ),
        _reepassword()
      ],
    );
  }
  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://cdn-icons-png.flaticon.com/128/295/295128.png"));
  }
      Container _Carne() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Carnet',
              labelText: 'Carne',
              border: InputBorder.none),
              
        )); //caja de texto
  }
  
      Container _nombre() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Nombre',
              labelText: 'Nombres',
              border: InputBorder.none),
        )); //caja de texto
  }
      Container _apellidos() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Apellido',
              labelText: 'Apellidos',
              border: InputBorder.none),
        )); //caja de texto
  }
      Container _direccion() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.abc, color: Colors.grey),
              hintText: 'Direccion',
              labelText: 'Direccion',
              border: InputBorder.none),
        )); //caja de texto
  }
    Container _passwordinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.password, color: Colors.grey),
              hintText: 'Password',
              labelText: 'Password',
              border: InputBorder.none),
          obscureText: true,
        )); //caja de texto
  }
      Container _reepassword() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.password, color: Colors.grey),
              hintText: 'Password',
              labelText: 'Confirmar contraseña',
              border: InputBorder.none),
          obscureText: true,
        )); //caja de texto
  }




}