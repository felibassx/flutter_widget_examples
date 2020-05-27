import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:widgets_collection/utils/styles.dart' as utils;
import 'package:widgets_collection/widgets/Cuadrado.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget', style: utils.h1StyleTextWhite,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
          ),
          IconButton(
            icon: Icon(Icons.code),
            onPressed: _launchURL,
          ),
          
        ],
      ),
      body: Row(
        children: <Widget>[
          Cuadrado(Colors.pink, 'Sin Expanded'),
          Expanded(
            child: Cuadrado(Colors.green, 'Con Expanded'),
            flex: 2,
          ),
          Expanded(
            child: Cuadrado(Colors.blue, 'Con Expanded'),
            flex: 1,
          ),
          Cuadrado(Colors.pink, 'Sin Expanded'),
        ],
      ),
    );
  }

   _launchURL() async {
    const url = 'https://github.com/felibassx/flutter_widget_examples/blob/master/lib/pages/expanded_page.dart';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
}


