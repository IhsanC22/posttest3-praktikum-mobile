import 'package:flutter/material.dart';

Widget deskripsAsset(String lokAsset, String deskripsi) {
  return Expanded(
  child: Column(
    children: [
      Container(
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Image.asset(
          lokAsset,
          fit: BoxFit.cover,
        ),
      ),
      const  SizedBox(height: 10),
      Text(
        deskripsi,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 14.0, color: Colors.black87),
      )
    ],
    ),
  );
}