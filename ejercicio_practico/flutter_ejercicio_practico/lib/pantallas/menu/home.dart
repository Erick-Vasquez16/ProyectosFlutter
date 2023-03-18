import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        _imagen(),
        _busqueda(),
        SizedBox(
          height: 70,
        ),
        _text1(),
        _text2()
        
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60, ),
        margin: EdgeInsets.symmetric(horizontal: 100),
        child: Image.asset('assets/img/zarco.jpg'));
  }
  Container _busqueda(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              icon: Icon(Icons.search, color: Colors.grey),
              hintText: 'Busca tu compo',
              border: InputBorder.none),
        )
    );
  }
Container _text1(){
  return Container(
    alignment: Alignment.centerLeft,
  margin: EdgeInsets.only(left: 20),
  child: Text(
    'Ventas',
    style: TextStyle(fontSize: 15),
  ),
  );
}




Container _text2(){
  return Container(
    alignment: Alignment.centerLeft,
  margin: EdgeInsets.only(left: 20),
  child: Text(
    'Burgers',
    style: TextStyle(fontSize: 15),
  ),
  );
}

}
