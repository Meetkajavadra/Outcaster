import 'package:flutter/material.dart';

class Global {
  static bool isIOS = false;
  static List<Map<String, dynamic>> allContacts = [
    {
      'pic': FlutterLogo(),
      'name': 'Tony Stark',
      'desc': 'flutter is great',
      'time': '12:28 pm',
      'phoneno': '8154992497'
    },
    {
      'pic': FlutterLogo(),
      'name': 'Captain America',
      'desc': 'Hey There',
      'time': '1:25 am',
      'phoneno': '8154992499'
    },
  ];
}
