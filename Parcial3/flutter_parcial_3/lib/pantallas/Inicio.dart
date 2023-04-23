import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';


class ApodScreen extends StatefulWidget {
  const ApodScreen({Key? key}) : super(key: key);

  @override
  _ApodScreenState createState() => _ApodScreenState();
}

class _ApodScreenState extends State<ApodScreen> {
  String? _imageUrl;
  String? _title;
  String? _description;

  @override
  void initState() {
    super.initState();
    fetchApodData();
  }

  Future<void> fetchApodData() async {
    final response = await http.get(Uri.parse('https://api.nasa.gov/planetary/apod?api_key=EZCSTYqFaU4KDuMiBwXY0GS5nsekC4DIYEtbmsAB'));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      setState(() {
        _imageUrl = jsonResponse['url'];
        _title = jsonResponse['title'];
        _description = jsonResponse['explanation'];
      });
    } else {
      throw Exception('Failed to load APOD data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('img/nasa.png',
              fit: BoxFit.contain, // Ajusta la imagen al ancho del Row
              height: 32, // Altura deseada para el logo
            ),
            SizedBox(width: 16), // Espacio entre el logo y el título
            Text( 'Nasa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          ],          
        ),      
      ),
      
      body: Column(
        children: [
          SizedBox(
          height: 5,
        ),
          Text("PARCIAL 3 ETPS3"),
          Text("Erick Oswaldo Vasquez Ortiz, Carne: 25-1776-2019"),
          SizedBox(
          height: 5,          
        ),
          _imageUrl == null
              ? Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Expanded(
                  child: CachedNetworkImage(
                    imageUrl: _imageUrl!,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                    height: 300,
                    width: double.infinity,
                  ),
                ),
          SizedBox(height: 20),
          _title == null
              ? Container()
              : Text(
                  _title!,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          SizedBox(height: 10),
          _description == null ? Container() : Text(_description!),
        ],
      ),
    );
  }
    Container _Imagen(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
        child: Image.network("https://science.nasa.gov/science-red/s3fs-public/styles/image_gallery_scale_960w/public/atoms/A_NGC1333_APOD1024.jpg?itok=DW85KDgi"));
  }
}
