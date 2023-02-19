import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.indigoAccent,
          ),
          Container(
            height: 50,
            width: 50,
            color: Color.fromARGB(255, 83, 254, 151),
          ),
          Container(
            height: 50,
            width: 50,
            color: Color.fromARGB(255, 83, 237, 254),
          ),
        ],
      ),
    );
  }
}