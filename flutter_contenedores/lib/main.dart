import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp( Contenedores());
}

class Contenedores extends StatelessWidget{
//widget que no cambia
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainersF(),
    );
  }
}

class ContainersF extends StatefulWidget {
  //cambia de estado
  const ContainersF({super.key});

  @override
  State<ContainersF> createState() => _ContainersFState();
}

class _ContainersFState extends State<ContainersF>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

      return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
              //padding: EdgeInsets.all(50),
              //alignment: Alignment.center,
              height: 100,
              //width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                //color: Colors.tealAccent,
                //borderRadius: BorderRadius.circular(15), //<--para que sea un cuadrado
                //border: Border.all(color: Colors.black,width: 10),//para que sea solo el circulo
                //shape: BoxShape.circle//para que se conviera en un circulo
                borderRadius: BorderRadius.circular(5),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(4.0,4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),

                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0,-4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0)
                ],
                
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  //borderRadius: BorderRadius.circular(5),

                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,               
                ),
              ),
            ),
        ],
      ),
    );
  }
}


