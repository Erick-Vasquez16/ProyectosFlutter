import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

const List profile = [{
  "name":"Raven",
  "img":"https://tv-fanatic-res.cloudinary.com/iu/s--_wltD3jT--/f_auto,q_auto/v1556510006/bran-tracks-a-raven-game-of-thrones-s8e3"
}];

const List chat_data =[
  {
  "name":"Daenerys",
  "img":"https://media.allure.com/photos/586bd643327f28075707a642/1:1/w_897,h_897,c_limit/ad5fcbd66ea3ab71fb0af4d22687a84105f7800f2670e995d4090c8ace3960e6a6ac0f11f47ead4b79d01269ba9a11f7.jpg",
  "text":"Entregame a Missandei",
  "date":"24/02/2023"
  },
  {
  "name":"Cersei",
  "img":"https://static.wikia.nocookie.net/villains/images/d/db/Cersei_Lannister_HBO.png/revision/latest/scale-to-width-down/404?cb=20170317111043&path-prefix=it",
  "text":"Solo te llevaras la cabeza",
  "date":"24/02/2023"
  }
];

List contig_secc_uno = [
  { "icon":Icons.star,  "text":"Mensajes",  "color": Colors.yellow[700]},
  {"icon":Icons.laptop, "text":"Whatsapp web/Desktop", "color": Colors.green[800]}
];

List contig_secc_dos = [
  {"icon":Icons.lock,  "text":"Cuenta",  "color": Colors.yellow[700]},
  {"icon":Icons.chat_bubble, "text":"Chats", "color": Colors.green},
  {"icon":Icons.notification_important,  "text":"Notificaciones",  "color": Colors.redAccent},
  {"icon":LineIcons.database,  "text":"Almacenar y respaldos",  "color": Colors.green}
  ];

List contig_secc_tres = [{
  {"icon":Icons.info_outline,  "text":"Help",  "color": Colors.blue[600]},
  {"icon":Icons.favorite_rounded, "text":"Llamar amigo", "color": Colors.red[400]}
}];

const List mensajes=[
  {"isMe":true, "message":"Que estas haciendo", "time":"18:42","isLast":false},
  {"isMe":false, "message":"Que estas haciendo", "time":"18:42","isLast":true}
  ];