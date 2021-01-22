import 'package:cardapio_restaurante/componentes/app_bar_custom.component.dart';
import 'package:cardapio_restaurante/componentes/drawer_menu.component.dart';
import 'package:cardapio_restaurante/componentes/list_categories.component.dart';
import 'package:cardapio_restaurante/componentes/list_products.component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarCustom(context),
        drawer: DrawerMenu(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListCategories(),
            ListProducts(),
          ],
        ));
  }
}
