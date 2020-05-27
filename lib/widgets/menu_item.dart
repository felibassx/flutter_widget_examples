import 'package:flutter/material.dart';
import 'package:widgets_collection/utils/styles.dart' as utils;

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const MenuItem({Key key, this.icon, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.black54,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: utils.drawerStyleText,
            )
          ],
        ),
      ),
    );
  }
}