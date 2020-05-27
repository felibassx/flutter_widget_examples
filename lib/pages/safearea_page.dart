import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:widgets_collection/utils/styles.dart' as utils;

class SafeAreaExamplePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safe Area Widget', style: utils.h1StyleTextWhite,),
        // leading: IconButton(icon:Icon(Icons.arrow_back),
        //   onPressed:() =>  Navigator.pushReplacementNamed(context, 'home'),
        // ),
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
      body: SafeArea(
        top: true,
        bottom: true,
        right: true,
        left: true,
        child: ListView(
          children: List.generate(
              100,
              (i) => Text(
                    'elemento de lista num: $i',
                    style: utils.lstElemStyleText,
                  )),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://github.com/felibassx/flutter_widget_examples/blob/master/lib/pages/safearea_page.dart';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

    // // Ejemplo con SafeArea por defecto
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Text(
  //         'Esto es una prueba de SafeArea',
  //         style: utils.h1StyleText,
  //       ),
  //     ),
  //   );
  // }

  // // Ejemplo sin SafeArea
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Text(
  //       'Esto es una prueba de SafeArea',
  //       style: utils.h1StyleText,
  //     ),
  //   );
  // }
}