
import 'package:flutter/material.dart';

class ProductosItem extends StatelessWidget {
  String nombre;
  String precio;
  String imagen;

 ProductosItem(this.nombre,this.imagen,this.precio);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Container(
   //width: 150,
   height: 150,
    color: Color.fromARGB(255, 194, 183, 235),
    padding: EdgeInsets.all(10),
    
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Precio: \$' + precio,
                style: TextStyle(
                  color: Color.fromARGB(255, 44, 27, 49),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Image.network(
            imagen,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  ),
);
  }
}