import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: redColor,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: () {
    }, 
    child: login.text.white.fontFamily(bold).make(),
  );
}

