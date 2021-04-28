import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
      child: Column(children: AppDrawer.getDrawerOptions()),
    );
  }
}
