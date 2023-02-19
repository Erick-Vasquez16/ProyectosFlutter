import 'package:flutter/material.dart';

import '../Figuras/square.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    final List_post=['P1','P2','P3','P4'];
    return Scaffold(
      body: ListView(//padre
        children: [
          /* esto seva hacer en la clase square
          Padding(padding: EdgeInsets.all(8.0),//primer hijo
          child: Container(//hijo del primer hijo xd
          height: 200,
          color: Colors.amberAccent[200],
          ),
          ),
          Padding(padding: EdgeInsets.all(8.0),//Segundo hijo
          child: Container(//hijo del segundo hijo xd
          height: 200,
          color: Colors.blueGrey[200],
          ),
          ),
          Padding(padding: EdgeInsets.all(8.0),//Tercer hijo
          child: Container(//hijo del tercero hijo xd
          height: 200,
          color: Colors.blueAccent[200],
          ),
          ),
          Padding(padding: EdgeInsets.all(8.0),//cuarto hijo
          child: Container(//hijo del cuarto hijo xd
          height: 200,
          color: Colors.amberAccent[200],
          ),
          ),
          */
          Mifigura(),
          Mifigura(),
          Mifigura(),
          Mifigura(),
        ],
      ),
    );
  }
}
//ME  quede en la una hora trinta de la clase