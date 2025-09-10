import 'package:flutter/material.dart';

Map<String, dynamic>Globalcredentials = {};

Map <String, dynamic> Credentialsstorer(TextEditingController pass,
    TextEditingController email, TextEditingController name) {
  String password1 = pass.text.toString();
  String emails = email.text.toString();
  String names = name.text.toString();
  Globalcredentials = {
    'email': emails,
    'password': password1,
    'name': names
  };
  return Globalcredentials;
}