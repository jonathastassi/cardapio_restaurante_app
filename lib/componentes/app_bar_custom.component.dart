import 'package:flutter/material.dart';

AppBar appBarCustom(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
    elevation: 0,
    title: RichText(
      text: TextSpan(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
        ),
        children: [
          TextSpan(
              text: "Jow",
              style: TextStyle(color: Theme.of(context).primaryColor)),
          TextSpan(text: "Lanchão", style: TextStyle(color: Colors.black)),
        ],
      ),
    ),
    actions: [
      IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Theme.of(context).primaryColor,
          onPressed: () {})
    ],
  );
}
