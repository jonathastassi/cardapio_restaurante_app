import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Jonathas"),
            accountEmail: Text("jonathastassi@hotmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("JT"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Minha Conta"),
            onTap: () {
              Navigator.pop(context);
              // nav
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text("Meus Pedidos"),
            onTap: () {
              Navigator.pop(context);
              // nav
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favoritos"),
            onTap: () {
              Navigator.pop(context);
              // nav
            },
          )
        ],
      ),
    );
  }
}
