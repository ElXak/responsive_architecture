import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
        ],
      ),
      child: Row(children: AppDrawer.getDrawerOptions()),
    );
  }
}
