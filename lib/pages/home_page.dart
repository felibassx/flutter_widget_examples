import 'package:flutter/material.dart';

import 'package:widgets_collection/utils/styles.dart' as utils;
import 'package:widgets_collection/widgets/menu_item.dart';

class HomePage extends StatelessWidget {
  // Ejemplo con SafeArea por defecto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Widget. Ejemplos'),
        ),
        body: Center(child: Text('Widget nativos de Flutter')),
        drawer: Drawer(
          elevation: 5.0,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(60),
                child: Container(

                    child: Text(
                      'Todos los widget',
                      style: utils.h1StyleTextWhite,
                    )
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              MenuItem(
                icon: Icons.widgets,
                title: 'SafeArea',
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'safearea');
                },
              ),
              MenuItem(
                icon: Icons.widgets,
                title: 'Expanded',
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'expanded');
                },
              ),
              
            ],
          ),
        ));
  }
}
