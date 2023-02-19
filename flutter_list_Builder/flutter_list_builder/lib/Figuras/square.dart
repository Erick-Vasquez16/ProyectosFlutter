import 'package:flutter/material.dart';

class Mifigura extends StatelessWidget {
  const Mifigura({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),//primer hijo
          child: Container(//hijo del primer hijo xd
          height: 500,
          color: Colors.amberAccent[700],
          ),//hijo
      );
  }
}