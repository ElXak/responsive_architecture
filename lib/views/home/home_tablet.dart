import 'package:flutter/material.dart';

import '../../widgets/app_drawer/app_drawer.dart';

class HomeTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Expanded(child: Container()),
      AppDrawer(),
    ];
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(children: children)
          : Row(children: children.reversed.toList()),
    );
  }
}
