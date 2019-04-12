import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Text(''),
              decoration: new BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/support.png'),
                ),
              )),
          ListTile(
            title: Text(
              "Favourites",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            trailing: Icon(
              EvaIcons.heart,
              color: Colors.red,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
