import 'package:flutter/material.dart';

import '../../widgets/app_drawer/app_drawer.dart';

class HomeMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AppDrawer(),
        ],
      ),
    );
  }
}
