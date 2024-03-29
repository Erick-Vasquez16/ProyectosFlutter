import 'package:flutter/material.dart';
import 'kitchen.dart';

class Comida extends StatelessWidget {
   Comida({super.key});


  List productos = [
    {
      "Nombre": "Hamburguesa",
      "Imagen": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuOR6CfchR3H6ABHGnzpQX1yaaClJY1CMqcA&usqp=CAU",
      "Precio": "12.00"
    },
    {
      "Nombre": "Tacos",
      "Imagen": "https://images.hola.com/imagenes/cocina/noticiaslibros/20210917196161/recetas-tacos-mexicanos/0-995-197/portada-tacos-age-m.jpg",
      "Precio": "5.00"
    },
    {
      "Nombre": "Tortas",
      "Imagen": "https://cdn1.matadornetwork.com/blogs/2/2019/08/Torta-comida-mexicana-1200x853.jpg",
      "Precio": "6.00"
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