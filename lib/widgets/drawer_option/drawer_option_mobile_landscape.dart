import 'package:flutter/material.dart';

class DrawerOptionMobileLandscape extends StatelessWidget {
  final IconData iconData;

  const DrawerOptionMobileLandscape({Key key, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(iconData),
    );
  }
}
