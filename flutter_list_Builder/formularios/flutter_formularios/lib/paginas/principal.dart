import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("data:image/png;base64,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"),
        SizedBox(
          height: 20,
        ),
        Text('Formulario'),
        //Image.asset("assets/img/F.png"),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField())
      ],
    );
  }
}