import 'package:flutter/material.dart';
import 'kitchen.dart';

class Cocina extends StatelessWidget {
   Cocina({super.key});


  List productos = [
    {
      "Nombre": "Ollas antiadherentes",
      "Imagen": "https://cdn-icons-png.flaticon.com/512/1356/1356999.png",
      "Precio": "15.00"
    },
    {
      "Nombre": "Sartenes",
      "Imagen": "https://cdn-icons-png.flaticon.com/512/1356/1356961.png",
      "Precio": "20.00"
    },
    {
      "Nombre": "Cuchillos de Cocina",
      "Imagen": "https://cdn-icons-png.flaticon.com/512/1866/1866298.png",
      "Precio": "15.00"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: 
          List.generate(
            productos.length
          , 
          (index) {
            return Column(
              children: [
                Container(child: ProductosItem(productos[index]["Nombre"],productos[index]["Imagen"],productos[index]["Precio"])),
                Container(height: 5,)
              ],
            );
          }
          ),
        
      ),
    );
        

  }
}